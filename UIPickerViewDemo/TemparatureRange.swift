//
//  TemparatureRange.swift
//  UIPickerViewDemo
//
//  Created by AdBox on 5/24/17.
//  Copyright © 2017 myth. All rights reserved.
//

import UIKit

/**
 - UIPickerViewDataSource delegate is a data model.
    provides number of components and
    number of rows of picker view.
 */

// TemparatureRange is data model which provide the data for the app.
class TemparatureRange: NSObject, UIPickerViewDataSource {
    
    /**
     - Declare a list of numbers from -100 to 100
     - Swift core func map always return an array
     - Here map will return 200 numbers as an array
     */
    let values = (-100...100).map {$0}
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // number of spin wheel
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // each spin wheel contains how many rows
        return values.count
    }
}

