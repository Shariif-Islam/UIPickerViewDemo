//
//  Converter.swift
//  UIPickerViewDemo
//
//  Created by AdBox on 5/24/17.
//  Copyright © 2017 myth. All rights reserved.
//

import UIKit

class Converter {
    
    static let shared = Converter()
    
    func degressFarenheight(degress :Int) -> Int {
    
        // Formula of converting degress to fahenheight
        return Int(1.8 * Float(degress) + 32)
    }
}
