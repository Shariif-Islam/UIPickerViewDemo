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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // action for selected row
        displayConvertedValues(forSelected: row)
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        let titleData = "\(temparatureRange.values[row])  C"
        
        // Customize text color,font of picker view
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 15.0)!,NSForegroundColorAttributeName:UIColor.yellow])
        return myTitle
    }
    
}
