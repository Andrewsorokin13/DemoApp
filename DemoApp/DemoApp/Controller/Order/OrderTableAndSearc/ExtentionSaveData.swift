//
//  ExtentionSaveData.swift
//  Cleaning
//
//  Created by Андрей Сорокин on 24/08/2021.
//

import Foundation

extension OrderTableViewController{
    // ps должно быть нормальное решение, но я не знаю его
    
    
    func saveDataToOrdCompletedTableViewController (adress: String ,advertising: String, areaText: String , cleaningType: String , clientName: String , datatimeTex: String , moreInfoText: String , phoneNumber : String , priceText: String  ){
        do {
            try! realm.write{
            let ord1 = ArchivData()
                ord1.adress = adress
                ord1.advertising = advertising
                ord1.areaText = areaText
                ord1.cleaningType = cleaningType
                ord1.clientName = clientName
                ord1.datatimeTex = datatimeTex
                ord1.moreInfoText = moreInfoText
                ord1.phoneNumber = phoneNumber
                ord1.priceText = priceText
                
             realm.add(ord1)
                print(ord1)
             }
        }
    }
}
