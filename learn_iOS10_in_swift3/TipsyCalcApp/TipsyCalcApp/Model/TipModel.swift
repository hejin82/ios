//
//  TipModel.swift
//  TipsyCalcApp
//
//  Created by 何進 on 2018/1/1.
//  Copyright © 2018年 何進. All rights reserved.
//

import Foundation

class TipModel {
    
    private var _billAmount: Double = 0
    private var _tipPercent: Double = 0
    private var _tipAmount: Double = 0
    private var _totalAmount: Double = 0
    
    var billAmount: Double {
        get {
            return _billAmount
        }
        set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        }
        set {
            _tipPercent = newValue
        }
    }
    
    var tipAmount: Double {
        get {
            return _tipAmount
        }
        set {
            _tipAmount = newValue
        }
    }
    
    var totalAmount: Double {
        get {
            return _totalAmount
        }
        set {
            _totalAmount = newValue
        }
    }
    
    init(billAmount: Double, tipPercent: Double) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
    }
    
    func calculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = billAmount + tipAmount
    }
}
