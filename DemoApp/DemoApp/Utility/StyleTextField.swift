//
//  StyleTextField.swift
//  Cleaning
//
//  Created by Андрей Сорокин on 24/08/2021.
//

import Foundation
import UIKit

struct CustomStyle {
    static func styleTextField(_ textfield: UITextField){
        textfield.layer.borderWidth = 2
        textfield.layer.cornerRadius = 7
        textfield.layer.borderColor = UIColor.init(red: 0.86, green: 0.89, blue: 0.94, alpha: 1.00).cgColor
        
    }
}
