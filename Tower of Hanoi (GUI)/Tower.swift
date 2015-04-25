//
//  Tower.swift
//  Tower of Hanoi (GUI)
//
//  Created by Max Chiu on 25/4/15.
//  Copyright (c) 2015 C&A Computer Consultants Ltd. All rights reserved.
//

import Foundation

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
        for disc in discs {
            disc.draw()
        }
    }
    
}