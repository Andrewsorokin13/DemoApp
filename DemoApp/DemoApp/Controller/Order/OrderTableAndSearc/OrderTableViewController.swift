//
//  OrderTableViewController.swift
//  Cleaning
//
//  Created by Андрей Сорокин 2021.
//

import UIKit
import RealmSwift


class OrderTableViewController: UITableViewController  {
    
    let realm = try! Realm()
    var  order: Results<NewClents>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadOrders()
        tableView.separatorStyle = .singleLine
        
    }

    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
       tableView.reloadData()
        tabBarController?.tabBar.isHidden = false
    }
    
    func updateModel(at indexPath: IndexPath) {
        if let orderForDeletion = self.order?[indexPath.row] {
            do {
                try self.realm.write {
                    self.realm.delete(orderForDeletion)
                    tableView.reloadData()
                }
            } catch {
                print("Error deleting oder, \(error)")
            }
        }
    }
}
