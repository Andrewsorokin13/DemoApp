//
//  NewOrdersViewController.swift
//  Cleaning
//
//  Created by Андрей Сорокин on 06/08/2021.
//

import UIKit
import RealmSwift
import iOSDropDown
import DateTextField


class NewOrdersViewController: UIViewController {
    
    let realm = try! Realm()
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var advertising: DropDown!
    @IBOutlet weak var nameClient: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var cleaningType: UITextField!
    @IBOutlet weak var areaTextField: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var serviceList: UITextField!
    @IBOutlet weak var dataTime: DateTextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var moreInfo: UITextField!
        

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextFiled()
        tabBarController?.tabBar.isHidden = true
        self.saveButton.isEnabled = false
    }


    @IBAction func saveOrderButton(_ sender: UIButton) {
        saveData()
    }
    
}


