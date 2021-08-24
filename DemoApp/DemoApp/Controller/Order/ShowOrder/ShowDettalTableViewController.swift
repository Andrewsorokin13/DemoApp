//
//  TestTableViewController.swift
//  Cleaning
//
//  Created by Андрей Сорокин 2021.
//

import UIKit


class ShowDettalTableViewController: UITableViewController {
   
    private var names: [String]
    init (names: [String]){
        self.names = names
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.tabBar.isHidden = true
        tableView.register(UINib(nibName: "TestTableViewCell", bundle: nil), forCellReuseIdentifier: "TestTableViewCell")
        
    }

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell", for: indexPath) as! ShowDettalViewCell
        cell.nameStringStatic.text = Const.namingShowOrder[indexPath.row]
        cell.nameStringDynamic.text = names[indexPath.row]
        return cell
        
    }
}
