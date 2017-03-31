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
    
    @IBAction func resetPreferencesFirstResponderAction(_ sender: AnyObject?){
        
        let d = UserDefaults.standard
        
        d.synchronize()
        d.set(nil, forKey: "computerFirstPreference")
        d.set(nil, forKey: "computerSecondPreference")
        d.set(nil, forKey: "computerThirdPreference")
        d.set(nil, forKey: "computerFourthPreference")
        d.set(nil, forKey: "computerFifthPreference")
        d.set(nil, forKey: "computerSixthPreference")
        
        
        
        
        
    }
    
}
