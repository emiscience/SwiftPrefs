import Cocoa

class PreferencesGeneralViewController: NSViewController {
    
    // disable the layout constraint on the right side of the button, so the window doesn't briefly assume its final size before it's animated
    
    @IBOutlet weak var constraint : NSLayoutConstraint!
    var oldPriority : NSLayoutPriority!

    @IBAction func optionOneAction(_ sender: AnyObject) {
        debugPrint("change: \(#function)")
    }
    
    @IBAction func optionTwoAction(_ sender: AnyObject) {
        debugPrint("change: \(#function)")
    }
    
    @IBAction func ItemsSelectionDidChange(_ sender: AnyObject) {
        debugPrint("change: \(#function)")
    }
    
    @IBAction func OtherSttingsButtonAction(_ sender: AnyObject) {
        debugPrint("pressed: Other Settings Button")
    }
    
    
    
    
}
