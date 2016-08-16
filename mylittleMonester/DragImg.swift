//
//  DragImg.swift
//  mylittleMonester
//
//  Created by 李宝明 on 16/8/16.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import Foundation
import UIKit

class DragImg: UIImageView {
    
    var originPosition: CGPoint!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        originPosition = self.center
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            let position = touch.locationInView(self.superview)
            self.center = CGPointMake(position.x, position.y)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.center = originPosition
    
    }
}
