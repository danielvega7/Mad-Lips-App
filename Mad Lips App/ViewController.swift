//
//  ViewController.swift
//  Mad Lips App
//
//  Created by DANIEL VEGA on 10/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var vc1TextFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nvc = segue.destination as! ViewController2
            nvc.word = vc1TextFieldOutlet.text!
        
    
    

}

    @IBAction func goToVC2Action(_ sender: UIButton) {
        performSegue(withIdentifier: "jamal", sender: nil)
    }
}
