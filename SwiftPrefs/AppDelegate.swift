import Cocoa

@NSApplicationMain

class AppDelegate: NSObject, NSApplicationDelegate {
    
    lazy var preferencesWindowController: PreferencesWindowController  = {
        let wcSB = NSStoryboard(name: "Preferences", bundle: NSBundle.mainBundle())
        // or whichever bundle
        return wcSB.instantiateInitialController() as! PreferencesWindowController
    }()

    
//    lazy var niblessPreferencesWindowController: PreferencesWindowController  = {
//        let npWB = PreferencesWindowController()
//
//        
//
//        let wcSB = NSStoryboard(name: "Preferences", bundle: NSBundle.mainBundle())
//        // or whichever bundle
//        return wcSB.instantiateInitialController() as! PreferencesWindowController
//    }()

    
    @IBAction func showPreferencesWindow(sender: NSObject?){
        self.preferencesWindowController.showWindow(self)
    }
    
}
