//
//  Disc.swift
//  Tower of Hanoi (GUI)
//
//  Created by Max Chiu on 24/4/15.
//  Copyright (c) 2015 C&A Computer Consultants Ltd. All rights reserved.
//

import Foundation
import Cocoa

var defaultWidth : CGFloat = 200
var defaultHeight : CGFloat = 20
var defaultStep : CGFloat = 8
var defaultX : CGFloat = 0

class Disc {
    
    var rect : NSRect
    

    var outlineColor = NSColor.blackColor()
    var fillColor = NSColor.grayColor()
    
    
    init(discNo : Int) {
        let fDiscNo = CGFloat(discNo)
        let x = defaultStep * fDiscNo
        let width = defaultWidth - 2 * x
        
        self.rect = NSRect(x: x, y: 0, width: width, height: defaultHeight)
        
    }
    
    
    func draw() {
        NSGraphicsContext.saveGraphicsState()
        
        fillColor.set()
        NSRectFill(rect)
        
        outlineColor.set()
        NSFrameRectWithWidth(rect, 3)
        
        NSGraphicsContext.restoreGraphicsState()

    }
    
    class func height() -> CGFloat {
        return defaultHeight
    }
    
    
}