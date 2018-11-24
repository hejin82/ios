//
//  ViewController.swift
//  HelloNoun
//
//  Created by 何進 on 2018/11/25.
//  Copyright © 2018 何進. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userOutput: UILabel!
    @IBOutlet weak var userInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func setOutput(_ sender: Any) {
        userOutput.text = userInput.text
    }
}

