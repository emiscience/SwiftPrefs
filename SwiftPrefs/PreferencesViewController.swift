import Cocoa

// in the storyboard, ensure the NSTabView's delegate is set to this controller object

class PreferencesViewController: NSTabViewController {
   
    lazy var originalSizes = [String : NSSize]()
    
    override func viewWillAppear() {
        super.viewWillAppear()

        // make the window not resizable by the user
        let window = self.view.window
        let styleMask = window?.styleMask
        if (styleMask == nil) || (NSResizableWindowMask != styleMask! | NSResizableWindowMask) {
            window?.styleMask &= ~NSResizableWindowMask
        }
    }
    
    // MARK: - NSTabViewDelegate
    
    // in the storyboard, ensure the view controller's transition checkboxes are all off

    override func tabView(tabView: NSTabView, willSelectTabViewItem tabViewItem: NSTabViewItem) {
        super.tabView(tabView, willSelectTabViewItem: tabViewItem)
        
        let currentTabViewItem = tabView.selectedTabViewItem?
        if (currentTabViewItem != nil) {
            currentTabViewItem!.view!.hidden = true
        }
        tabViewItem.view!.hidden = true
        
        // for each tabViewItem, save the original, as-laid-out-in-IB view sizes, so it can be used to resize the window with the selected tab changes
        var size = tabViewItem.view?.frame.size
        var originalSize = self.originalSizes[tabViewItem.label]
        if (originalSize != nil) {
            size = originalSize
        } else {
            self.originalSizes[tabViewItem.label] = size
        }
        
        let window = self.view.window
        if (window != nil) {
            var frame = window?.frame
            frame!.origin.y = frame!.origin.y + (frame!.size.height - size!.height)
            frame!.size.height = size!.height;
            frame!.size.width = size!.width;
            window?.setFrame(frame!, display: true, animate: true)
        }
    }
    
    override func tabView(tabView: NSTabView, didSelectTabViewItem tabViewItem: NSTabViewItem) {
        super.tabView(tabView, didSelectTabViewItem: tabViewItem)
        tabViewItem.view?.hidden = false
    }
}
