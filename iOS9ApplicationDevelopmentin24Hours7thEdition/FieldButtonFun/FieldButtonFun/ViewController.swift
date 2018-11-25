//
//  ViewController.swift
//  FieldButtonFun
//
//  Created by 何進 on 2018/11/25.
//  Copyright © 2018 何進. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var thePlace: UITextField!
    @IBOutlet weak var theVerb: UITextField!
    @IBOutlet weak var theNumber: UITextField!
    @IBOutlet weak var theTemplate: UITextView!
    @IBOutlet weak var theStory: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func createStory(_ sender: Any) {
        
    }
    @IBAction func hideKeyboard(_ sender: Any) {
        thePlace.resignFirstResponder()
        theVerb.resignFirstResponder()
        theNumber.resignFirstResponder()
        theTemplate.resignFirstResponder()
    }
    
}

