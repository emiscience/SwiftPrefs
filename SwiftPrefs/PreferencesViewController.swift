import Cocoa

// in the storyboard, ensure the view controller's transition checkboxes are all off, and the NSTabView's delegate is set to this controller object

class PreferencesViewController: NSTabViewController {
    
    lazy var originalSizes = [String : NSSize]()
    
    // MARK: - NSTabViewDelegate
    
    override func tabView(tabView: NSTabView, willSelectTabViewItem tabViewItem: NSTabViewItem?) {
        super.tabView(tabView, willSelectTabViewItem: tabViewItem)
        
        _ = tabView.selectedTabViewItem
//        if (currentTabViewItem != nil) {
//            currentTabViewItem!.view!.hidden = true
//        }
//        tabViewItem!.view!.hidden = true
        
        // for each tabViewItem, save the original, as-laid-out-in-IB view size, so it can be used to resize the window with the selected tab changes
        let originalSize = self.originalSizes[tabViewItem!.label]
        if (originalSize == nil) {
            self.originalSizes[tabViewItem!.label] = (tabViewItem!.view?.frame.size)!
        }
    }
    
    override func tabView(tabView: NSTabView, didSelectTabViewItem tabViewItem: NSTabViewItem?) {
        super.tabView(tabView, didSelectTabViewItem: tabViewItem)
        
        let window = self.view.window
        if (window != nil) {
            window?.title = tabViewItem!.label
            let size = (self.originalSizes[tabViewItem!.label])!
            let contentFrame = (window?.frameRectForContentRect(NSMakeRect(0.0, 0.0, size.width, size.height)))!
            var frame = (window?.frame)!
            frame.origin.y = frame.origin.y + (frame.size.height - contentFrame.size.height)
            frame.size.height = contentFrame.size.height;
            frame.size.width = contentFrame.size.width;
            window?.setFrame(frame, display: false, animate: true)
        }
        
        //        tabViewItem!.view?.hidden = false
    }
}
