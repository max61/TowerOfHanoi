//
//  Disc.swift
//  Tower of Hanoi (GUI)
//
//  Created by Max Chiu on 24/4/15.
//  Copyright (c) 2015 C&A Computer Consultants Ltd. All rights reserved.
//

import Foundation
import Cocoa

class Disc {
    
    var rect : NSRect
    

    var outlineColor = NSColor.blackColor()
    var fillColor = NSColor.grayColor()
    
    
    init(x : CGFloat, y : CGFloat, width : CGFloat, height : CGFloat) {
        self.rect = NSRect(x: x, y: y, width: width, height: height)
        
    }
    
    
    func draw() {
        NSGraphicsContext.saveGraphicsState()
        
        fillColor.set()
        NSRectFill(rect)
        
        outlineColor.set()
        NSFrameRectWithWidth(rect, 3)
        
        NSGraphicsContext.restoreGraphicsState()

    }
    
    
}