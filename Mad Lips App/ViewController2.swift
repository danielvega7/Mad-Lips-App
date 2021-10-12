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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        vc2TextViewOutlet.text = "My uncle wants to go to the \(word)"
    }


}
