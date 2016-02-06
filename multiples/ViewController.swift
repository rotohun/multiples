//
//  ViewController.swift
//  multiples
//
//  Created by ronald hunter on 2/5/16.
//  Copyright © 2016 ronald hunter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Global variables
    
    var multiple = 0
    var counter = -1
    var sum = 0
    
    //Home Screen
        //Variables

        @IBOutlet weak var appTitle: UIImageView!
    
        @IBOutlet weak var multipleInsert: UITextField!
    
        @IBOutlet weak var playButton: UIButton!
    
    
    
    
    
    //Add Screen
        //Variables
    
        @IBOutlet weak var mathLnl: UILabel!
        @IBOutlet weak var addButton: UIButton!
    
    
    
    
    
    
        @IBAction func playButton(sender: AnyObject) {
            if multipleInsert.text != nil && multipleInsert.text != ""{
             
                shouldBehidden(true)
            }
        }
    
    
    @IBAction func addButton(sender: AnyObject) {
        
        multiple = Int(multipleInsert.text!)!
        
        
        
        counter++
        
        var n1 = counter * multiple
        
        sum = multiple + n1
        
        mathLnl.text = "\(n1) + \(multiple) = \(sum)"
        
    }
    
    
    // Functions 
    
    
    func shouldBehidden(check:Bool){
        if check == true{
            
            playButton.hidden = true
            multipleInsert.hidden = true
            appTitle.hidden = true
            
            mathLnl.hidden = false
            addButton.hidden = false
            
        }else{
            
            playButton.hidden = false
            multipleInsert.hidden = false
            appTitle.hidden = false
            
            mathLnl.hidden = true
            addButton.hidden = true
            
        }
    }

    
}

