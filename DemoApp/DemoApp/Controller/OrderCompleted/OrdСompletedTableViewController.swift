//
//  OrdСompletedTableViewController.swift
//  Cleaning
//
//  Created by Андрей Сорокин 2021.
//

import UIKit
import RealmSwift

class Ord_ompletedTableViewController: UITableViewController {
    
    let realm = try! Realm()
    var  orderArchiv: Results<ArchivData>!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadArchivOrders()

        
    }
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
       tableView.reloadData()
//        tabBarController?.tabBar.isHidden = false
    }


}

extension Ord_ompletedTableViewController{
    func loadArchivOrders(){
        orderArchiv = realm.objects(ArchivData.self)
        tableView.reloadData()
        
    }
    
    func updateModel(at indexPath: IndexPath) {
        if let orderForDeletion = self.orderArchiv?[indexPath.row] {
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
