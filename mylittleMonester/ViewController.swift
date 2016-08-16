//
//  ViewController.swift
//  mylittleMonester
//
//  Created by 李宝明 on 16/8/16.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var penality3Img: UIImageView!
    @IBOutlet weak var penality2Img: UIImageView!
    @IBOutlet weak var penality1Img: UIImageView!
    
    @IBOutlet weak var monsterImg: MonsterImg!
    @IBOutlet weak var heartImg: DragImg!
    @IBOutlet weak var foodImg: DragImg!
    
    let DIM_ALPHA:CGFloat = 0.2
    let OPAQUE: CGFloat = 1.0
    let MAX_PENALITIES = 3
    
    var timer:NSTimer!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        heartImg.dropTarget = monsterImg
        foodImg.dropTarget = monsterImg
        
        penality1Img.alpha = DIM_ALPHA
        penality3Img.alpha = DIM_ALPHA
        penality2Img.alpha = DIM_ALPHA
        
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDropOnCharacter:", name: "onTargetDropped", object: nil)
        
 
          }
    
    func itemDropOnCharacter(notif: AnyObject) {
        print(" drop on me \n")
    }
    
    func startTimer(){
        
        if timer != nil {
            timer.invalidate()
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "changeGameState", userInfo: nil, repeats: true)
        
        
    }
    
  }


