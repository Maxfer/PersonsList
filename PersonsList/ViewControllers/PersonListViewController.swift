//
//  PersonListViewController.swift
//  PersonsList
//
//  Created by Максим Шкрябин on 16.06.2023.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    // MARK: — Private Propereties
    var personList: [Person] = []
    
    // MARK: — Override Methds
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailPersonVC = segue.destination as? PersonDetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailPersonVC.title = personList[indexPath.row].fullName
        detailPersonVC.phone = personList[indexPath.row].phone
        detailPersonVC.email = personList[indexPath.row].email
    }
    
}

// MARK: - Table view data source

extension PersonListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}


