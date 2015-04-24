//
//  AppDelegate.swift
//  Tower of Hanoi (GUI)
//
//  Created by Max Chiu on 24/4/15.
//  Copyright (c) 2015 C&A Computer Consultants Ltd. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    // @IBOutlet weak var window: NSWindow!

    var mainWindowController : MainWindowController!
    

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        let mainWindowController = MainWindowController()
        mainWindowController.showWindow(self)
        
        self.mainWindowController = mainWindowController
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

