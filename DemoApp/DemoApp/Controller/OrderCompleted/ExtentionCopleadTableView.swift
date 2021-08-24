//
//  ExtentionCopleadTableView.swift
//  Cleaning
//
//  Created by Андрей Сорокин on 22/08/2021.
//


import UIKit



extension Ord_ompletedTableViewController {
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orderArchiv.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Const.cellCompletedOrder, for: indexPath) as! archTableViewCell
        let array = orderArchiv[indexPath.row]
        cell.name?.text = array.clientName
        cell.dateT?.text = array.datatimeTex
        cell.phone?.text = array.phoneNumber
        cell.address?.text = array.adress
        return cell
        
    }
    
    // Swipe tableCell
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let trash = UIContextualAction(style: .normal, title: "Trash") {(action, view, copletion) in
            self.updateModel(at: indexPath)
            copletion(true)
        }
        trash.backgroundColor = .systemRed
        let config = UISwipeActionsConfiguration(actions: [trash])
               config.performsFirstActionWithFullSwipe = false
        
        return config
    }
    
}
