//
//  NewClents.swift
//  Cleaning
//
//  Created by Андрей Сорокин 2021.
//

import Foundation
import RealmSwift

class NewClents: Object {
    
   @objc dynamic var advertising: String = ""
    @objc dynamic var areaText: String = ""
    @objc dynamic var cleaningType: String = ""
    @objc dynamic var clientName: String = ""
    @objc dynamic var datatimeTex: String = ""
    @objc dynamic var moreInfoText: String = ""
    @objc dynamic var phoneNumber: String = ""
    @objc dynamic var priceText: String = ""
    @objc dynamic var serviceList: String = ""
    @objc dynamic var adress: String = ""
    
}
