//
//  FeedViewController.swift
//  W4L-YouTube
//
//  Created by Jeff Rauch on 11/1/16.
//  Copyright © 2016 Jeff Rauch. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet var feedView: UIView!
    
    var feedViewOriginalX: CGPoint!
    var feedViewRightOffset: CGFloat!
    var feedViewLeft: CGPoint!
    var feedViewRight: CGPoint!
    var menuViewController: UIViewController!
   

    override func viewDidLoad() {
        super.viewDidLoad()

        feedViewRightOffset = 260
        feedViewLeft = feedView.center
        feedViewRight = CGPoint(x: feedView.center.x + feedViewRightOffset,y: feedView.center.y)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPanFeed(_ sender: UIPanGestureRecognizer) {
        
        let location = sender.location(in: view)
        let velocity = sender.velocity(in: view)
        let translation = sender.translation(in: view)
        
        
        
        if sender.state == .began {
            
            feedViewOriginalX = feedView.center
            
        } else if sender.state == .changed {
            
            feedView.center = CGPoint(x: feedViewOriginalX.x + translation.x, y: feedViewOriginalX.y)
            
            
        } else if sender.state == .ended {

            
            
            if velocity.y > 0 {
                UIView.animate(withDuration: 0.2) {
                    self.feedView.center = self.feedViewRight
                }
            } else {
                UIView.animate(withDuration: 0.2) {
                    self.feedView.center = self.feedViewLeft
                }
            }
        }
        
        print("translation \(translation)")
        
    }

   


}
