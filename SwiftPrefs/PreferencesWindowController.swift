//
//  PreferencesWindowController.swift
//  SwiftPrefs
//
//  Created by Adrian Sluijters on 04/02/2016.
//  Copyright © 2016 Flixel Photos Inc. All rights reserved.
//

import Cocoa

class PreferencesWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        
        // Do a basic window align to centre
        //      This wont happen with every call
        //      Only the first call
        self.window?.center()
        
    }
    
    @IBAction func resetPreferencesFirstResponderAction(sender: AnyObject?){
        
        let d = NSUserDefaults.standardUserDefaults()
        
        d.synchronize()
        d.setObject(nil, forKey: "computerFirstPreference")
        d.setObject(nil, forKey: "computerSecondPreference")
        d.setObject(nil, forKey: "computerThirdPreference")
        d.setObject(nil, forKey: "computerFourthPreference")
        d.setObject(nil, forKey: "computerFifthPreference")
        d.setObject(nil, forKey: "computerSixthPreference")
        
        
        
        
        
    }
    
}
