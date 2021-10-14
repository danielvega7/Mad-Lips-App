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
        
//how to do it without making a madlibs object
       /* if vc2theme == "food" {
            //change it 
            vc2TextViewOutlet.text = "The \(adjective) \(word) very much \(verb) my hunger"
        }
        else if vc2theme == "soccer" {
            vc2TextViewOutlet.text = "The \(adjective) soccer player \(verb) because his \(word) told him to"
        }
        else{
            vc2TextViewOutlet.text =  "\(verb) the computer lets \(adjective) \(word) improve their skills"
        } */
        
        if StaticVars.allMadlibs[StaticVars.madLibCount - 1].type == "food"
        {
            vc2TextViewOutlet.text = StaticVars.allMadlibs[StaticVars.madLibCount - 1].foodSentence()
        }
        
        else if StaticVars.allMadlibs[StaticVars.madLibCount - 1].type == "soccer" {
            vc2TextViewOutlet.text = StaticVars.allMadlibs[StaticVars.madLibCount - 1].soccerSentence()
            
        }
        
                 else{
            
            vc2TextViewOutlet.text = StaticVars.allMadlibs[StaticVars.madLibCount - 1].compsciSentence()
        }
    }
    
    @IBAction func madLibHistoryAction(_ sender: UIButton) {
    }
    


}
