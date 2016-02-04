import Cocoa

@NSApplicationMain

class AppDelegate: NSObject, NSApplicationDelegate {
    
    lazy var preferencesWindowController: PreferencesWindowController  = {
        let wcSB = NSStoryboard(name: "Preferences", bundle: NSBundle.mainBundle())
        // or whichever bundle
        return wcSB.instantiateInitialController() as! PreferencesWindowController
   }()
    
    @IBAction func showPreferencesWindow(sender: NSObject?){
        debugPrint("show")
        self.preferencesWindowController.showWindow(self)
    }
    
}
