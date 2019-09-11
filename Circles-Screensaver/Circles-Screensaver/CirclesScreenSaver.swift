//
//  CirclesScreensaver.swift
//  Circles-Screensaver
//
//  Created by Mark van den Berg on 11/09/2019.
//  Copyright © 2019 Mark van den Berg. All rights reserved.
//

import Cocoa
import ScreenSaver

class CirclesScreenSaver: ScreenSaverView {
    
    //MARK: - Properties
    
    fileprivate var width = 0.0
    fileprivate var height = 0.0
    fileprivate var maxRadius : Double = 0.0
    fileprivate var yZero = 0.0
    fileprivate var xZero = 0.0
    fileprivate var circles = [Circle]()
    fileprivate var maxCircles = 0
    fileprivate var timeBetween = 0
    fileprivate var timeSinceLast = 0
    
    
    //MARK: - Init
    
    override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
        setup()
    }
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        setup()
    }
    
    //MARK: - ScreenSaver
    
    override func draw(_ rect: NSRect) {
        super.draw(rect)
        drawBackground(color: NSColor.black, rect: rect)
        
        for circle in circles {
            circle.draw()
        }
        
        for circle in circles {
            circle.update()
        }
    }
    
    override func animateOneFrame() {
        self.needsDisplay = true
        
        if (circles.count < maxCircles && timeSinceLast >= timeBetween) {
            circles.append(Circle(maxRadius: width, xZero: xZero, yZero: yZero, number: CGFloat(circles.count)))
            timeSinceLast = 0
        }
        
        timeSinceLast += 1
        
        display()
    }
    
    //MARK: - Fileprivate Methods
    
    fileprivate func drawBackground(color: NSColor, rect: NSRect) {
        color.setFill()
        let path = NSBezierPath()
        path.appendRect(rect)
        path.fill()
        
    }
    
    fileprivate func setup() {
        animationTimeInterval = 1.0 / 50.0
        
        width = Double(self.bounds.width)
        height = Double(self.bounds.height)
        maxRadius = ((width/2)*(width/2)+(height/2)*(height/2)).squareRoot()
        yZero = height / 2.0
        xZero = width / 2.0
        
        maxCircles = 6
        timeBetween = 720 / maxCircles
        
        circles.append(Circle(maxRadius: maxRadius, xZero: xZero, yZero: yZero, number: 0.0))
    }
}

