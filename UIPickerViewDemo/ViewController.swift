//
//  ViewController.swift
//  UIPickerViewDemo
//
//  Created by AdBox on 5/24/17.
//  Copyright © 2017 myth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var temparatureRange: TemparatureRange!
    @IBOutlet weak var lb_value: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func displayConvertedValues(forSelected row :Int) {
    
        // get the values from data model
        let degress = temparatureRange.values[row]
        lb_value.text = "\(Converter.shared.degressFarenheight(degress: degress))  F" // Convert that values to farenheight
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController : UIPickerViewDelegate {

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        // set the title of each row
        return "\(temparatureRange.values[row])  C"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // action for selected row
        displayConvertedValues(forSelected: row)
    }
    
}
