//
//  GraphicView.swift
//  Tower of Hanoi (GUI)
//
//  Created by Max Chiu on 24/4/15.
//  Copyright (c) 2015 C&A Computer Consultants Ltd. All rights reserved.
//

import Cocoa

class GraphicView: NSView {

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
        
        let disc = Disc(x: 10, y: 5, width: 100)
        
        disc.draw()
        
        
    }
    
}
