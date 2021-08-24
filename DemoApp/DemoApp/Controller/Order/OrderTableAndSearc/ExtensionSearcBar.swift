//
//  ExtensionSearcBar.swift
//  Cleaning
//
//  Created by Андрей Сорокин 2021.
//

import UIKit


extension OrderTableViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        order = order?.filter("clientName CONTAINS[cd] %@", searchBar.text!).sorted(byKeyPath: "clientName", ascending: true)
        tableView.reloadData()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text?.count == 0 {
            loadOrders()
            DispatchQueue.main.async {
                searchBar.resignFirstResponder()
            }
        }
    }
    
    func loadOrders(){
        order = realm.objects(NewClents.self)
        tableView.reloadData()
        
    }

}
