//
//  ContactListViewController.swift
//  PersonsList
//
//  Created by Максим Шкрябин on 16.06.2023.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var personList: [Person] = []
    
}

// MARK: - Table view data source

extension ContactListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        let person = personList[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 1:
            content.image = UIImage(systemName: "phone")
            cell.backgroundColor = UIColor(white: 1, alpha: 1)
            content.text = person.phone
        case 2:
            content.image = UIImage(systemName: "envelope")
            cell.backgroundColor = UIColor(white: 1, alpha: 1)
            content.text = person.email
        default:
            cell.backgroundColor = UIColor(white: 0.9, alpha: 1)
            content.text = person.fullName
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
}
