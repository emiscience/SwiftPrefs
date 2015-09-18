import Cocoa

class GeneralPreferencesViewController: NSViewController {
    
    // disable the layout constraint on the right side of the button, so the window doesn't briefly assume its final size before it's animated
    
    @IBOutlet weak var constraint : NSLayoutConstraint!
    var oldPriority : NSLayoutPriority!
    
    override func viewWillAppear() {
        //        self.oldPriority = self.constraint.priority
    }

    override func viewDidDisappear() {
        //        self.constraint.priority = 1
    }
    
    override func viewDidAppear() {
        //        self.constraint.priority = self.oldPriority
    }
    
}
