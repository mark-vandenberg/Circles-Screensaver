//
//  Circle.swift
//  Circles-Screensaver
//
//  Created by Mark van den Berg on 11/09/2019.
//  Copyright © 2019 Mark van den Berg. All rights reserved.
//

import Cocoa

class Circle: NSObject {
    
    //MARK: - Properties
    
    fileprivate let maxRadius : CGFloat
    fileprivate let yZero : CGFloat
    fileprivate let xZero : CGFloat
    fileprivate var radius : CGFloat = 0
    fileprivate var diameter : CGFloat = 0
    fileprivate var strokeWidth : CGFloat = 0
    fileprivate var color : NSColor
    fileprivate let colorPallet = Color.Pallet.bright
    fileprivate var gapBefore : CGFloat = 0
    fileprivate var dash : CGFloat = 1
    fileprivate var gapAfter : CGFloat = 359
    fileprivate var round = false
    fileprivate var rotation : CGFloat = 0
    
    //MARK: - Init
    
    init (maxRadius: CGFloat, xZero: CGFloat, yZero: CGFloat, number: CGFloat) {
        self.maxRadius = maxRadius
        self.xZero = xZero
        self.yZero = yZero
        color = NSColor(hue: (number * 10 + 300) / 360, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        super.init()
        reset()
    }
    
    //MARK: - Fileprivate Methods
    
    fileprivate func reset() {
        strokeWidth = CGFloat.random(in: 8...64)
        radius = CGFloat.random(in: 0 + strokeWidth / 2 ..< maxRadius - strokeWidth / 2)
        diameter = 2 * radius
        color = colorPallet.getNextColor(lastColor: color)
        gapBefore = 0.0
        dash = 1.0
        gapAfter = 359.0
        round = false
        rotation = CGFloat.random(in: 0...360)
    }
    
    fileprivate func calculateDash(degree: CGFloat, r: CGFloat) -> CGFloat {
        return 2 * CGFloat.pi * r / 360 * degree
    }
    
    //MARK: - Public Methods
    
    func update() {
        if (!round) {
            dash += 1
        } else {
            gapBefore += 1
            dash -= 1
        }
        if (dash >= 360) {
            round = true
        }
        if (gapBefore > 360.0) {
            reset()
        }
        gapAfter = 360.0 - gapBefore - dash
    }
    
    func draw() {
        let path = NSBezierPath()
        path.appendOval(in: NSRect(x: xZero - radius, y: yZero - radius, width: diameter, height: diameter))
        color.setStroke()
        path.setLineDash(
            [0.0,
             calculateDash(degree: gapBefore, r: radius),
             calculateDash(degree: dash, r: radius),
             calculateDash(degree: gapAfter, r: radius)],
            count: 4, phase: 0.0)
        path.lineWidth = strokeWidth
        
        //rotate path to start at a random angle
        path.transform(using: AffineTransform(translationByX: -CGFloat(xZero), byY: -CGFloat(yZero)))
        path.transform(using: AffineTransform(rotationByDegrees: rotation))
        path.transform(using: AffineTransform(translationByX: CGFloat(xZero), byY: CGFloat(yZero)))
        
        path.lineCapStyle = .butt //.butt .round .square
        
        path.stroke()
    }
}

