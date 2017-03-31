v3.0.0
    - Version Bump: Bumped Version to 3.0.0 
    - Changed: Changed the version to be the same as the swift version. So happy 3.0!
    - Version bump: To 3.0
    - Project Update: to lates Xcode (Version 8.3 (8E162)
    - Removed: __FUNCTION__ references and replaced with #function

v2.0.3-dev
    - Prefs: Added another tab (between General and Advanved) - Computer
                    items are cocoa bound in this tab
    - PrefsWindowController: Now has an IBOutlet to reset the prefs in the new
                    computer tab in preferences. (keys are manually typed in)

v2.0.2-dev
    - Prefs: now has viewControllers for the Advanced and general views
    - Prefs views (Advanced and General) linked (IBAction)

v2.0.1-dev
    - Prefs (App Dele) now responding to first responder
            "showPreferencesWindow)"
    - Prefs menu item under the App menu linked to the first responder
    - Button in the "Main" window linked to the first responder"

v2.0.0
    - Separate storyboards for the prefs and main windows/viewcontrollers

v1.0.1
    - Hotfix 2.0 refactor merge
    - Version bump


20160204 as@emiscience.com
    - develop branch is copy of master (and is to be used for development only)
    - Added version 1.0.0
    - Had orignal developer update readme with their details


20151118 as@emiscience.com
    - Added .DS_STORE to .gitignore
    - Added Swift-2.0 branch
    - Added CHANGELOG
    - Updated project to Xcode 7.0 GM
    - Updated swift code to Swift 2.0 (Apple Swift version 2.0 (swiftlang-700.0.59 clang-700.0.72))
    - Removed All constraints from "General" preferences view & reset to suggested constraints through IB
    - Removed the "Hiding and Unhiding" of the views, as these are used in the transition animations so can't be hidden.
