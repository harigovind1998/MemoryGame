//
//  ViewController.swift
//  MemoryGame
//
//  Created by Hari Govind on 2019-09-18.
//  Copyright © 2019 Hari Govind. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let possibleMatches = [2,3,4]
    var selectedMatches = 2
    var gridMin = 0
    var gridMax = 1
    
    let gridForTwo = [4,5]
    let gridForThree = [6,5]
    let grodForFour = [5,8]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return possibleMatches.count
    }
    
    internal func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        setMaxAndMin(matches: possibleMatches[row])
        return String(possibleMatches[row])
    }
    func setMaxAndMin(matches: Int){
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        gridPicker.delegate = self
        gridPicker.dataSource = self
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.minimumValue = Double(gridMin);
        stepper.maximumValue = Double(gridMax);
    }
    
    @IBAction func gridSizeStepper(_ sender: UIStepper) {
        xGridValue.text = String(gridForTwo[Int(sender.value)])
    }
    
    @IBOutlet weak var gridPicker: UIPickerView!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var tstLabel: UILabel!
    @IBOutlet weak var xGridValue: UILabel!
    @IBOutlet weak var yGridValue: UILabel!
}

