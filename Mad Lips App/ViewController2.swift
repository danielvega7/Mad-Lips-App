//
//  ViewController2.swift
//  Mad Lips App
//
//  Created by DANIEL VEGA on 10/12/21.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var vc2TextViewOutlet: UITextView!
    
    var word = ""
    var verb = ""
    var adjective = ""
    var vc2theme = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if vc2theme == "food" {
            vc2TextViewOutlet.text = StaticVars.foodsentence
        }
        else if vc2theme == "soccer" {
            vc2TextViewOutlet.text = StaticVars.soccersentence
        }
        else{
            vc2TextViewOutlet.text = StaticVars.compscisentence
        }
        
        
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if vc2theme == "food" {
            //change it 
            vc2TextViewOutlet.text = StaticVars.foodsentence
        }
        else if vc2theme == "soccer" {
            vc2TextViewOutlet.text = StaticVars.soccersentence
        }
        else{
            vc2TextViewOutlet.text = StaticVars.compscisentence
        }
        
       
    }


}
