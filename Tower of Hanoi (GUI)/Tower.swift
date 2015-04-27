//
//  Tower.swift
//  Tower of Hanoi (GUI)
//
//  Created by Max Chiu on 25/4/15.
//  Copyright (c) 2015 C&A Computer Consultants Ltd. All rights reserved.
//

import Foundation
import Cocoa

var towers : Array<Tower>!

class Tower {
    var discs = Array<Disc>()
    
    init() {
        towers.append(self)
    }
    
    class func list() -> Array<Tower>? {
        return towers
    }
    
    class func reset() {
        towers = Array<Tower>()
    }
    
    
    class func moveFrom(from : Int, to : Int) {
        towers[to].addDisc(towers[from].removeDisc())
    }
    
    
    func addDisc(disc : Disc) {
        discs.append(disc)
    }
    
    func removeDisc() -> Disc {
        return discs.removeLast()
    }
    
    func draw() {
        let xForm = NSAffineTransform()
        xForm.translateXBy(0, yBy: Disc.height())
        
        
        NSGraphicsContext.saveGraphicsState()

        for disc in discs {
            
            disc.draw()
            
            xForm.concat()
            
            

        }

        NSGraphicsContext.restoreGraphicsState()
        

    }
    
}