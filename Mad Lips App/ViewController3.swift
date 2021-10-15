//
//  ViewController3.swift
//  Mad Lips App
//
//  Created by DANIEL VEGA on 10/14/21.
//

import UIKit

class ViewController3: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var numOfMadlibTextFieldOutlet: UITextField!
    @IBOutlet weak var madLibTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.numOfMadlibTextFieldOutlet.delegate = self
    }
    
    
    
    

    func performAction() {
        
        
        
        if numOfMadlibTextFieldOutlet.text == "" || Int(numOfMadlibTextFieldOutlet.text!) == nil {
            
            let alert = UIAlertController(title: "Textfield empty or is not an Int", message: "Put something in the text fields or else...", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Yes, will do", style: .default, handler: nil))
                
          
            //alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

            self.present(alert, animated: true)
            
        }
        
        else{
            
            
          let hey = Int(numOfMadlibTextFieldOutlet.text!) ?? 0
            
            if hey <= StaticVars.madLibCount && hey > 0 {
                
                madLibTextView.text = StaticVars.allMadlibs[(hey - 1)].end
                
            }
            
            else{
                let alert = UIAlertController(title: "Int is not a real index", message: "change the int", preferredStyle: .alert)

                alert.addAction(UIAlertAction(title: "Yes, will do", style: .default, handler: nil))
                    
              
                //alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

                self.present(alert, animated: true)
            }
            
        }
            
            
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        numOfMadlibTextFieldOutlet.resignFirstResponder()  //if desired
        performAction()
        return true
        
    }
    

    @IBAction func madLibAction(_ sender: UIButton) {
        
            
            
            
            if numOfMadlibTextFieldOutlet.text == "" || Int(numOfMadlibTextFieldOutlet.text!) == nil {
                
                let alert = UIAlertController(title: "Textfield empty or is not an Int", message: "Put something in the text fields or else...", preferredStyle: .alert)

                alert.addAction(UIAlertAction(title: "Yes, will do", style: .default, handler: nil))
                    
              
                //alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

                self.present(alert, animated: true)
                
            }
            
            else{
                
                
              let hey = Int(numOfMadlibTextFieldOutlet.text!)!
                
                if hey <= StaticVars.madLibCount && hey > 0 {
                    
                    madLibTextView.text = StaticVars.allMadlibs[(hey - 1)].end
                    
                }
                
                else{
                    let alert = UIAlertController(title: "Int is not a real index", message: "change the int", preferredStyle: .alert)

                    alert.addAction(UIAlertAction(title: "Yes, will do", style: .default, handler: nil))
                        
                  
                    //alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

                    self.present(alert, animated: true)
                }
                
            }
                
                
        }
    
    
   

}
