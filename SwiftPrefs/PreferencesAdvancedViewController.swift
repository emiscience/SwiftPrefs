//
//  PreferencesAdvancedViewController.swift
//  SwiftPrefs
//
//  Created by Adrian Sluijters on 04/02/2016.
//  Copyright © 2016 Flixel Photos Inc. All rights reserved.
//

import Cocoa

class PreferencesAdvancedViewController: NSViewController {

    @IBOutlet var deleteAllPreferencesButton: NSButton!
    
    
    @IBAction func deleteAllPreferencesAction(_ sender: AnyObject) {
        debugPrint("Button: \(#function)")
    }
    
}
