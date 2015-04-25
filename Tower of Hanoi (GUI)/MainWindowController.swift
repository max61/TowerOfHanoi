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
        
        var x : CGFloat = 0
        var width : CGFloat = 100
        var height : CGFloat = 20
        var step : CGFloat = 8
    
        
        for i in 0 ..< 10 {
            tower.addDisc(Disc(x: x, y: 0, width: width, height: height))
            
            x += step
            width -= (2 * step)
        }
        
        
        graphicView.tower = tower
        
        graphicView.needsDisplay = true
    }
    
}
