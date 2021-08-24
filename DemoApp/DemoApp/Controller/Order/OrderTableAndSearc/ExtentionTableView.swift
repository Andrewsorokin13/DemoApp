//
//  ExtentionTableView.swift
//  Cleaning
//
//  Created by Андрей Сорокин 2021.
//


import UIKit


extension OrderTableViewController {
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return order.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Const.cellNewOrder) as! OrderTableCell
        let cont = order[indexPath.row]
        cell.namesLable?.text = cont.clientName
        cell.phoneLable?.text = cont.phoneNumber
        cell.dateLable?.text = cont.datatimeTex
        cell.addressLable.text = cont.adress

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let content = order[indexPath.row]
        let newVC = ShowDettalTableViewController(
            names:[content.advertising , content.clientName, content.phoneNumber,content.cleaningType, content.areaText, content.adress, content.serviceList, content.datatimeTex, content.priceText, content.moreInfoText])
        self.navigationController?.pushViewController(newVC, animated: true)
        
        
    }
  
    // Swipe tableCell
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let compleated = UIContextualAction(style: .normal, title: "Archive"){
            (action, view, completion) in
            let archivOrder = self.order[indexPath.row]
            
            self.saveDataToOrdCompletedTableViewController(adress: archivOrder.adress, advertising: archivOrder.advertising, areaText: archivOrder.areaText, cleaningType: archivOrder.cleaningType, clientName: archivOrder.clientName, datatimeTex: archivOrder.datatimeTex, moreInfoText: archivOrder.moreInfoText, phoneNumber: archivOrder.phoneNumber, priceText: archivOrder.priceText)
            self.updateModel(at: indexPath)
                        completion(true)
        }
        compleated.backgroundColor = .systemGreen
        let trash = UIContextualAction(style: .normal, title: "Trash") {(action, view, copletion) in

            self.updateModel(at: indexPath)
            copletion(true)
        }
        trash.backgroundColor = .systemRed
        let config = UISwipeActionsConfiguration(actions: [compleated, trash ])
               config.performsFirstActionWithFullSwipe = false
        return config
    }
   
}


