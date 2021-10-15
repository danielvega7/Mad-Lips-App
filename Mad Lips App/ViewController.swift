//
//  ViewController.swift
//  Mad Lips App
//
//  Created by DANIEL VEGA on 10/12/21.
//

import UIKit

class StaticVars {
    
    static var themes = ["food", "soccer", "compututer science"]
    
    static var foodsentence = "The _adjective_ _noun_ very much _verb_ my hunger"
    static var soccersentence = "The _adjective_ soccer player _verb_ because his _noun_ told him to"
    static var compscisentence = "_verb_ the computer lets _adjective_ _noun_ improve their skills"
    
    static var allMadlibs = [Madlibs]()
    static var madLibCount = 0
    
}



class ViewController: UIViewController {
    @IBOutlet weak var vc1TextFieldOutlet: UITextField!
    @IBOutlet weak var vc1TextFieldAdjectiveOutlet: UITextField!
    @IBOutlet weak var vc1TextFieldVerbOutlet: UITextField!
    @IBOutlet weak var themeLabel: UILabel!
  
    
    
    var randomNum = 0
    var theme = ""
    override func viewDidLoad() {
        super.viewDidLoad()
      
        randomNum = Int.random(in: 0...2)
        theme = StaticVars.themes[randomNum]
        
        themeLabel.text = "Theme: \(theme)"
        
        if theme == "food" {
           
        }
        else if theme == "soccer" {
            
        }
        else{
          
        }
        
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nvc = segue.destination as! ViewController2
            nvc.word = vc1TextFieldOutlet.text!
            nvc.adjective = vc1TextFieldAdjectiveOutlet.text!
            nvc.verb = vc1TextFieldVerbOutlet.text!
            nvc.vc2theme = theme
            
    
    

}

    @IBAction func goToVC2Action(_ sender: UIButton) {
        
        var vc1noun = vc1TextFieldOutlet.text!
        var vc1adjective = vc1TextFieldAdjectiveOutlet.text!
        var vc1verb = vc1TextFieldVerbOutlet.text!
        
        
        if vc1TextFieldOutlet.text == "" || vc1TextFieldAdjectiveOutlet.text == "" || vc1TextFieldVerbOutlet.text == ""{
            
            let alert = UIAlertController(title: "Textfield empty", message: "Put something in the text fields or else...", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Yes, will do", style: .default, handler: nil))
                
          
            //alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

            self.present(alert, animated: true)
            
        }
        else{
            
        let newMadlib = Madlibs(n: vc1noun, a: vc1adjective, v: vc1verb, t: theme)
            StaticVars.allMadlibs.append(newMadlib)
            StaticVars.madLibCount += 1
            
        performSegue(withIdentifier: "jamal", sender: nil)
        }
        
        
    }

    @IBAction func segmentedControllerAction(_ sender: UISegmentedControl) {
        
        var selected = sender.selectedSegmentIndex
        
        switch selected {
        case 0:
            randomNum = Int.random(in: 0...2)
            theme = StaticVars.themes[randomNum]
            
            themeLabel.text = "Theme: \(theme)"
            
            if theme == "food" {
                
            }
            else if theme == "soccer" {
               
            }
            else{
                
            }
        case 1:
            theme = StaticVars.themes[0]
            themeLabel.text = "Theme: \(theme)"
            
        case 2:
            theme = StaticVars.themes[1]
            themeLabel.text = "Theme: \(theme)"
          
        case 3:
            theme = StaticVars.themes[2]
            themeLabel.text = "Theme: \(theme)"
           
            
        default:
            themeLabel.text = "error"
            
        }
        
    }
    
    
    
    
}
