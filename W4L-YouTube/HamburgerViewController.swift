//
//  HamburgerViewController.swift
//  W4L-YouTube
//
//  Created by Jeff Rauch on 11/3/16.
//  Copyright © 2016 Jeff Rauch. All rights reserved.
//

import UIKit

class HamburgerViewController: UIViewController {

    // outlets


    
    // variable
    var menuViewController: UIViewController!
    var feedViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Create FeedViewController
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let FeedViewController = storyboard.instantiateViewController(withIdentifier: "FeedViewController") as! FeedViewController
        
        let MenuViewController = storyboard.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        
        
        addChildViewController(FeedViewController)
        
        view.addSubview(MenuViewController.view)
        MenuViewController.didMove(toParentViewController: self)
        
        view.addSubview(FeedViewController.view)
        FeedViewController.didMove(toParentViewController: self)


        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
