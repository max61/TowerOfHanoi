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
        
        let xForm = NSAffineTransform()
        xForm.translateXBy(250, yBy: 0)

        NSGraphicsContext.saveGraphicsState()
        
        if (Tower.list() != nil) {
            for tower in Tower.list()! {
                tower.draw()
                xForm.concat()
            }
        }
        
        NSGraphicsContext.restoreGraphicsState()
        
    }
    
}
