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
        
        NSGraphicsContext.saveGraphicsState()
        
        let disc = NSRect(x: 0, y: 0, width: 100, height: 15)
     
        NSColor.redColor().set()
        NSRectFill(disc)
     
        NSColor.blackColor().set()
        
        // NSFrameRect(disc)
        
        NSFrameRectWithWidth(disc, 3)
        
        NSGraphicsContext.restoreGraphicsState()
    }
    
}
