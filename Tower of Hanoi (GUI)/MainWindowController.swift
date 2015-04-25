//
//  MainWindowController.swift
//  Tower of Hanoi (GUI)
//
//  Created by Max Chiu on 24/4/15.
//  Copyright (c) 2015 C&A Computer Consultants Ltd. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    @IBOutlet weak var graphicView: GraphicView!
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        
        
        let tower = Tower()
        
        tower.addDisc(Disc(x: 0, y: 0, width: 200))
        tower.addDisc(Disc(x: 30, y: 30, width: 140))
        
        graphicView.tower = tower
        
        graphicView.needsDisplay = true
    }
    
}
