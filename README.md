# SwiftPrefs
A Yosemite-only demo app showing a preferences window using Swift, storyboards and NSTabViewController.

* The NSTabViewController uses the Toolbar style.
* The window is set to non-resizable in the NSTabViewController subclass' `viewWillAppear()`.
* The window is resized in `tabView(tabView: NSTabView, willSelectTabViewItem tabViewItem: NSTabViewItem)` using the selcted tabViewItem's original size. It depends on the autolayout constraints being set up correctly for each tabViewItem's view. Also, the view controller's transition checkboxes should all be off.
