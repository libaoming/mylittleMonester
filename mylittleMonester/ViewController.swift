//
//  ViewController.swift
//  mylittleMonester
//
//  Created by 李宝明 on 16/8/16.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var monsterImg: UIImageView!
    @IBOutlet weak var heartImg: DragImg!
    @IBOutlet weak var foodImg: DragImg!
    
    var imgArray = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
 
        for x in 1...4 {
            let img = UIImage(named: "idle\(x).png")
            self.imgArray.append(img!)
        }
        
        monsterImg.animationImages = imgArray
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    }
}


