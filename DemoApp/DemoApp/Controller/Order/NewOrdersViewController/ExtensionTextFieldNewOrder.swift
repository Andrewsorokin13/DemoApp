//
//  ExtensionTextFieldNewOrder.swift
//  Cleaning
//
//  Created by Андрей Сорокин on 24/08/2021.
//


import UIKit
extension NewOrdersViewController: UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        if (nameClient.text?.isEmpty) != nil || (address.text?.isEmpty) != nil || (dataTime.text?.isEmpty) != nil || (price.text?.isEmpty) != nil {
            self.saveButton.isEnabled = true
            
        }else {
            self.saveButton.isEnabled = false
        }
        return true
    }
    
    func updateTextFiled(){
        CustomStyle.styleTextField(advertising)
        CustomStyle.styleTextField(address)
        CustomStyle.styleTextField(areaTextField)
        CustomStyle.styleTextField(cleaningType)
        CustomStyle.styleTextField(nameClient)
        CustomStyle.styleTextField(phoneNumber)
        CustomStyle.styleTextField(price)
        CustomStyle.styleTextField(dataTime)
        CustomStyle.styleTextField(serviceList)
        CustomStyle.styleTextField(moreInfo)
        
        advertising.optionArray = Const.namingadvertising
        dataTime.dateFormat = .dayMonthYear
        dataTime.separator = "."
        
    }
}
