//
//  ExtensionSearcBarArchiv.swift
//  Cleaning
//
//  Created by Андрей Сорокин on 2021.
//


import UIKit
extension Ord_ompletedTableViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        orderArchiv = orderArchiv?.filter("clientName CONTAINS[cd] %@", searchBar.text!).sorted(byKeyPath: "clientName", ascending: true)
        tableView.reloadData()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text?.count == 0 {
            loadArchivOrders()
            DispatchQueue.main.async {
                searchBar.resignFirstResponder()
            }
        }
    }
    
}
