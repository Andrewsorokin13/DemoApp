//
//  ExtentionSaveNewOrder.swift
//  Cleaning
//
//  Created by Андрей Сорокин on 24/08/2021.
//

import Foundation
import UIKit
extension NewOrdersViewController{
    func saveData() {
        do {
            try! realm.write{
             let newOrderss = NewClents()
             newOrderss.adress = self.address.text!
             newOrderss.advertising = self.advertising.text!
             newOrderss.areaText = self.areaTextField.text!
             newOrderss.cleaningType = self.cleaningType.text!
             newOrderss.clientName = self.nameClient.text!
             newOrderss.datatimeTex = self.dataTime.text!
             newOrderss.moreInfoText = self.moreInfo.text!
             newOrderss.phoneNumber = self.phoneNumber.text!
             newOrderss.priceText = self.price.text!
             newOrderss.serviceList = self.serviceList.text!
             
             realm.add(newOrderss)
                
             }
        }
        tabBarController?.tabBar.isHidden = false
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
}
