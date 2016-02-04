import Cocoa

class PreferencesGeneralViewController: NSViewController {
    
    // disable the layout constraint on the right side of the button, so the window doesn't briefly assume its final size before it's animated
    
    @IBOutlet weak var constraint : NSLayoutConstraint!
    var oldPriority : NSLayoutPriority!

    @IBAction func optionOneAction(sender: AnyObject) {
        debugPrint("change: \(__FUNCTION__)")
    }
    
    @IBAction func optionTwoAction(sender: AnyObject) {
        debugPrint("change: \(__FUNCTION__)")
    }
    
    @IBAction func ItemsSelectionDidChange(sender: AnyObject) {
        debugPrint("change: \(__FUNCTION__)")
    }
    
    @IBAction func OtherSttingsButtonAction(sender: AnyObject) {
        debugPrint("pressed: Other Settings Button")
    }
    
    
    
    
}
