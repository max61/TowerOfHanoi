//
//  Tower.swift
//  Tower of Hanoi (GUI)
//
//  Created by Max Chiu on 25/4/15.
//  Copyright (c) 2015 C&A Computer Consultants Ltd. All rights reserved.
//

import Foundation
import Cocoa

class Tower {
    var discs = Array<Disc>()
    
    init() {
        
    }
    
    func addDisc(disc : Disc) {
        discs.append(disc)
    }
    
    func removeDisc() -> Disc {
        return discs.removeLast()
    }
    
    func draw() {
        var xForm = NSAffineTransform()
        
        var yXlate : CGFloat = 0
        for disc in discs {
            NSGraphicsContext.saveGraphicsState()
            
            xForm.translateXBy(0, yBy: yXlate)
            xForm.concat()
            
            
            disc.draw()
            
            yXlate += 20
           
            
            NSGraphicsContext.restoreGraphicsState()

        }
        

    }
    
}