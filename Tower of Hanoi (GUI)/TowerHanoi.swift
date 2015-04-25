//
//  TowerHanoi.swift
//  Tower of Hanoi (GUI)
//
//  Created by Max Chiu on 25/4/15.
//  Copyright (c) 2015 C&A Computer Consultants Ltd. All rights reserved.
//

import Foundation

struct Result {
    var from : Int
    var to : Int
}





class TowerHanoi {
    var resultList = Array<Result>()
    var curReadPos = 0
    
    init(discCnt : Int) {
        move(0, to: 2, count: discCnt)
    }
    
    
    private func move (from : Int, to : Int, count : Int) {
        if (count == 0) {return }
        
        let newTo = 3 - (from + to)
        
        move(from, to: newTo, count: count - 1)
        resultList.append(Result(from: from, to: to ))
        move(newTo,to: to, count: count - 1)
    }
    
    func getNextResult() -> Result? {
        if (curReadPos < resultList.count) {
            return resultList[curReadPos++]
        } else {
            return nil
        }
    }

}