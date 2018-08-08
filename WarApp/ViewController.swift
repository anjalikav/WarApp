//
//  ViewController.swift
//  WarApp
//
//  Created by Anjali Kavthekar on 7/27/18.
//  Copyright © 2018 Anjali Kavthekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!

    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var playerScore = 0
    var cpuScore = 0
    
    
    @IBAction func dealTapped(sender: AnyObject) {
        
        let leftRandomNumber = arc4random_uniform(13) + 2
        
        //print("left random number is: \(leftRandomNumber)")
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        //print("right random number is: \(rightRandomNumber)")
        
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        
        
        if leftRandomNumber > rightRandomNumber {
            playerScore++
            leftScoreLabel.text = String(playerScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            cpuScore++
            rightScoreLabel.text = String(cpuScore)
            
        }
        else {
            
        }
        
        
    }


}

