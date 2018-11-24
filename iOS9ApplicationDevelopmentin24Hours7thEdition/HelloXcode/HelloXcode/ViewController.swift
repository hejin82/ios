//
//  ViewController.swift
//  HelloXcode
//
//  Created by 何進 on 2018/11/25.
//  Copyright © 2018 何進. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myMessage: UILabel
        var myUnusedVariable: String
        myMessage = UILabel(frame: CGRect(x: 30, y: 50, width: 300, height: 50))
        myMessage.font = UIFont.systemFont(ofSize: 48)
        myMessage.text = "Hello Xcode"
        myMessage.textColor = UIColor(patternImage: UIImage(named: "Background")!)
        view.addSubview(myMessage)
        NSLog("Hello Xcode, Again")
    }


}

