//
//  DrawVC.swift
//  GoogleCardboard
//
//  Created by Vidyadhar V. Thatte on 8/13/15.
//  Copyright (c) 2015 Thatte. All rights reserved.
//

import UIKit

class DrawVC: UIViewController {

    @IBOutlet weak var leftBox: View!
    @IBOutlet weak var rightBox: View!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var screen = UIScreen.mainScreen().bounds
        var sht = screen.height
        println("screen height: \(sht)")
        
        leftBox.frame = CGRectMake(0, 0, 600, sht/2)
        rightBox.frame = CGRectMake(0, sht/2, 600, sht/2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
