//
//  View.swift
//  GoogleCardboard
//
//  Created by Vidyadhar V. Thatte on 8/13/15.
//  Copyright (c) 2015 Thatte. All rights reserved.
//

import UIKit

class View: UIView {
    
    
  
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let h = rect.height
        let w = rect.width
        var color:UIColor = UIColor.yellowColor()
        
        var drect = CGRect(x: (w * 0.25),y: (h * 0.25),width: (w * 0.5),height: (h * 0.5))
        
        var bpath:UIBezierPath = UIBezierPath(rect: drect)
        color.set()
        bpath.stroke()
        
        // Get the Graphics Context
        var context = UIGraphicsGetCurrentContext();
        
        // Set the circle outerline-width
        CGContextSetLineWidth(context, 5.0);
        
        // Set the circle outerline-colour
        UIColor.redColor().set()
        
        // Create Circle
        CGContextAddArc(context, (frame.size.width)/2, frame.size.height/2, (frame.size.width - 10)/4, 0.0, CGFloat(M_PI * 2.0), 1)
        
        // Draw
        CGContextStrokePath(context);
    }
    
}
