//
//  ViewController.swift
//  TipsyCalcApp
//
//  Created by 何進 on 2017/12/31.
//  Copyright © 2017年 何進. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipPercentageLbl: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var tipLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    
    var tip = TipModel(billAmount: 0.0, tipPercent: 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTipCalculationValues()
        updateUI()
    }
    
    func setTipCalculationValues() {
        tip.tipPercent = Double (tipPercentageSlider.value)
        tip.billAmount=((textField.text)! as NSString).doubleValue
        tip.calculateTip()
    }
    
    func updateUI() {
        tipLbl.text = String(format: "$%0.2f", tip.tipAmount)
        totalLbl.text = String(format: "$%0.2f", tip.totalAmount)
        tipPercentageLbl.text = String(tipPercentageSlider.value)
    }

    @IBAction func billAmountWasChanged(_ sender: Any) {
        setTipCalculationValues()
        updateUI()
    }
    @IBAction func tipPercentageDidChange(_ sender: Any) {
        setTipCalculationValues()
        updateUI()
    }
    
}

