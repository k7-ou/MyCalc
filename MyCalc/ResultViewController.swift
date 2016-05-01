//
//  ResultViewController.swift
//  MyCalc
//
//  Created by Kohei on 2016/04/27.
//  Copyright © 2016 Kohei. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var price :Int = 0
    var percent :Int = 0

    @IBOutlet weak var resultField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let percentValue = Float(percent) / 100
        let waribikiPrice = Float(price) * percentValue
        let percentOffPrice = price - Int(waribikiPrice)
        resultField.text = "\(percentOffPrice)"
    }
}
