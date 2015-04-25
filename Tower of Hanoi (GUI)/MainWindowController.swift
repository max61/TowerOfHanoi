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
    @IBOutlet weak var lblDiscCnt: NSTextField!
    @IBOutlet weak var stepDiscCnt: NSStepper!
    
    @IBOutlet weak var sliderSpeed: NSSliderCell!
    
    
    var timer : NSTimer?
    var hanoi : TowerHanoi!
    private var _discCnt : Int = 5
    
    var discCnt : Int {
        get {
            return _discCnt
        }

        set {
            _discCnt = newValue
            
            
            Tower.reset()
            
            let tower1 = Tower()
            
            var x : CGFloat = 0
            var width : CGFloat = 200
            var height : CGFloat = 20
            var step : CGFloat = 8
            
            
            for i in 0 ..< _discCnt {
                tower1.addDisc(Disc(x: x, y: 0, width: width, height: height))
                
                x += step
                width -= (2 * step)
            }
            
            let tower2 = Tower()
            let tower3 = Tower()
            graphicView.needsDisplay = true
            
            hanoi = TowerHanoi(discCnt: _discCnt)

            

            
        }
    }
    
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        
        lblDiscCnt.integerValue = stepDiscCnt.integerValue
        
        discCnt = stepDiscCnt.integerValue
  
        /*
        Tower.moveFrom(0, to: 2)
        graphicView.needsDisplay = true
        sleep(1)

        Tower.moveFrom(0, to: 1)
        graphicView.needsDisplay = true
        sleep(1)

*/
        
        
        
    }
    
    @IBAction func move(sender: AnyObject) {
        setTimer()

        /*
        Tower.moveFrom(0, to: 2)
        graphicView.needsDisplay = true
        sleep(2)
        
        Tower.moveFrom(0, to: 1)
        graphicView.needsDisplay = true
    
*/
        
        
        
    }
    
    @IBAction func speedCtl(sender: AnyObject) {
        setTimer()
        
        
    }
    
    @IBAction func stepDiscCnt(sender: AnyObject) {
        lblDiscCnt.integerValue = stepDiscCnt.integerValue
        discCnt = stepDiscCnt.integerValue
    }
    
    func update() {
        // Tower.moveFrom(0, to: 2)
        let result = hanoi.getNextResult()
        if (result != nil) {
            Tower.moveFrom(result!.from, to: result!.to)
            graphicView.needsDisplay = true
        } else {
            timer!.invalidate()
            timer = nil
        }
        
        
        
        
    }
    
    func setTimer() {
        if (timer != nil) {
            timer?.invalidate()
        }
        
        let timeInterval : NSTimeInterval =  (10 - sliderSpeed.doubleValue) * 0.1
    
        timer = NSTimer.scheduledTimerWithTimeInterval(timeInterval, target: self, selector: Selector("update"), userInfo: nil, repeats: true);
        
        

    }
    
    
}
