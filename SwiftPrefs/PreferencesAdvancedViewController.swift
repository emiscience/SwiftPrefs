import Cocoa

class PreferencesAdvancedViewController: NSViewController {

    @IBOutlet var deleteAllPreferencesButton: NSButton!
    
    
    @IBAction func deleteAllPreferencesAction(_ sender: AnyObject) {
        debugPrint("Button: \(#function)")
    }
    
}
