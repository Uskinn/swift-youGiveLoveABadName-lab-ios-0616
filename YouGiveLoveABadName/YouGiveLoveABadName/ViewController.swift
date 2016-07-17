//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bon: UIImageView!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    var normalImageSize: Bool = false
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.normalImageSize = true
    }
    
    @IBAction func expandButtonTapped(sender: AnyObject) {
        
        if normalImageSize {
            
            UIView.animateKeyframesWithDuration(0.7, delay: 0, options: .CalculationModeCubicPaced, animations: {
                
                UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                    self.bon.transform = CGAffineTransformMakeScale(1.0, 0.8)
                })
                
                UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                    self.bon.transform = CGAffineTransformMakeScale(1.0, 2.7)
                })
                
                UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                    self.bon.transform = CGAffineTransformMakeScale(1.0, 2.5)
                })
                
            }) { (finished) in
                
                self.normalImageSize = false
                print("succes")
            }
            
        } else {
            
            UIView.animateKeyframesWithDuration(0.7, delay: 0, options: .CalculationModeCubicPaced, animations: {
                
                UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                    self.bon.transform = CGAffineTransformMakeScale(1.0, 2.9)
                })
                
                UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                    self.bon.transform = CGAffineTransformMakeScale(1.0, 0.8)
                })
                
                UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                    self.bon.transform = CGAffineTransformMakeScale(1.0, 1.0)
                })
                
            }) { (finished) in
                
                self.normalImageSize = true
                print("Finished")
            }
            
        }
        
    }
    
    
}



