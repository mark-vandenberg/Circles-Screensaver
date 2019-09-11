//
//  Color.swift
//  Circles-Screensaver
//
//  Created by Mark van den Berg on 11/09/2019.
//  Copyright © 2019 Mark van den Berg. All rights reserved.
//

import Cocoa

class Color: NSObject {
    
    //MARK: - Properties
    
    static fileprivate let darkPallet   = [#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1),#colorLiteral(red: 0.5787474513, green: 0.3215198815, blue: 0, alpha: 1),#colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 1),#colorLiteral(red: 0.3084011078, green: 0.5618229508, blue: 0, alpha: 1),#colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1),#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1),#colorLiteral(red: 0, green: 0.5690457821, blue: 0.5746168494, alpha: 1),#colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1),#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1),#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1),#colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1),#colorLiteral(red: 0.5808190107, green: 0.0884276256, blue: 0.3186392188, alpha: 1)]
    static fileprivate let brightPallet = [#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1),#colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1),#colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1),#colorLiteral(red: 0.5563425422, green: 0.9793455005, blue: 0, alpha: 1),#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1),#colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1),#colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1),#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1),#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1),#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1),#colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1),#colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1)]
    static fileprivate let palePallet   = [#colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1),#colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1),#colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1),#colorLiteral(red: 0.8321695924, green: 0.985483706, blue: 0.4733308554, alpha: 1),#colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 1),#colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 1),#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1),#colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1),#colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 1),#colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1),#colorLiteral(red: 1, green: 0.5212053061, blue: 1, alpha: 1),#colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)]
    static fileprivate let webPallet = [
        NSColor(calibratedRed: 212.0/255.0, green:  12.0/255.0, blue:  37.0/255.0, alpha: 1.0),//Red
        NSColor(calibratedRed: 231.0/255.0, green: 100.0/255.0, blue:  34.0/255.0, alpha: 1.0),//Orange
        NSColor(calibratedRed: 254.0/255.0, green: 226.0/255.0, blue:  51.0/255.0, alpha: 1.0),//Yellow
        NSColor(calibratedRed: 180.0/255.0, green: 201.0/255.0, blue:  41.0/255.0, alpha: 1.0),//Lime
        NSColor(calibratedRed:  56.0/255.0, green: 162.0/255.0, blue:  52.0/255.0, alpha: 1.0),//Green
        NSColor(calibratedRed:  27.0/255.0, green: 161.0/255.0, blue: 152.0/255.0, alpha: 1.0),//Aqua
        NSColor(calibratedRed:  37.0/255.0, green: 172.0/255.0, blue: 220.0/255.0, alpha: 1.0),//Cyan
        NSColor(calibratedRed:  15.0/255.0, green: 108.0/255.0, blue: 177.0/255.0, alpha: 1.0),//Blue
        NSColor(calibratedRed:  80.0/255.0, green:  61.0/255.0, blue: 139.0/255.0, alpha: 1.0),//Indigo
        NSColor(calibratedRed: 126.0/255.0, green:  58.0/255.0, blue: 137.0/255.0, alpha: 1.0),//Purple
        NSColor(calibratedRed: 167.0/255.0, green:  20.0/255.0, blue:  93.0/255.0, alpha: 1.0),//Magenta
        NSColor(calibratedRed: 222.0/255.0, green:  18.0/255.0, blue: 109.0/255.0, alpha: 1.0) //Pink
    ]
    
    //MARK: - Enums
    
    enum Pallet {
        case bright
        case pale
        case dark
        case web
        case cycle
        
        func getNextColor(lastColor: NSColor) -> NSColor {
            switch self {
            case .dark :
                var color : NSColor
                repeat {
                    color = darkPallet[Int.random(in: 0..<darkPallet.count)]
                } while (color == lastColor)
                return color
            case .bright :
                var color : NSColor
                repeat {
                    color = brightPallet[Int.random(in: 0..<brightPallet.count)]
                } while (color == lastColor)
                return color
            case .pale :
                var color : NSColor
                repeat {
                    color = palePallet[Int.random(in: 0..<palePallet.count)]
                } while (color == lastColor)
                return color
            case .web :
                var color : NSColor
                repeat {
                    color = webPallet[Int.random(in: 0..<webPallet.count)]
                } while (color == lastColor)
                return color
            case .cycle :
                var hue : CGFloat = 0
                var sat : CGFloat = 0
                var bri : CGFloat = 0
                var alp : CGFloat = 0
                lastColor.getHue(&hue, saturation: &sat, brightness: &bri, alpha: &alp)
                
                hue = hue * 360
                hue += 60
                
                if (hue >= 360) {
                    hue -= 360
                }
                
                return NSColor(hue: hue/360.0, saturation: 1.0, brightness: 1.0, alpha: 1.0)
            }
        }
    }
}

