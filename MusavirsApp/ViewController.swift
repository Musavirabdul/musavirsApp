//
//  ViewController.swift
//  MusavirsApp
//
//  Created by Syed Muneeb Ur Rehman on 21/10/2020.
//  Copyright © 2020 Syed Muneeb Ur Rehman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0;



 @IBOutlet weak var labels: UILabel!
   
    @IBAction func numbers(_ sender: UIButton) //numbers buttons
    {
        
        labels.text = labels.text! + String(sender.tag-1) //

        numberOnScreen = Double(labels.text!)! //the answer will be decimal
    }
    
    
  @IBAction func button(_ sender: UIButton) // UI Buttons
  {
        
        if labels.text != "" && sender.tag != 11 && sender.tag != 16 // show the buttons in UI
        {
            if sender.tag == 12 //Divide
            {
                labels.text = "÷";
            }
           else if sender.tag == 13 //Multiply
            {
                labels.text = "x";
            }
           else if sender.tag == 14 //subtract
            {
                labels.text = "-";
            }
            else if sender.tag == 15 //add
            {
                labels.text = "+";
            }
        }
        
    }
    
    override func viewDidLoad() {
         super.viewDidLoad()
    
     }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
