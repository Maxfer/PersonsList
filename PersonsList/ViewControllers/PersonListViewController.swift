//
//  PersonListViewController.swift
//  PersonsList
//
//  Created by Максим Шкрябин on 16.06.2023.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    // MARK: — IB Outlet
    // @IBOutlet var specialityLabel: UILabel!
    
    // MARK: — Public Propereties
    // let personValue = ""
    
    // MARK: — Private Propereties
    private var personList = Person.getPersons()
    
    // MARK: — Override Methds
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailPersonVC = segue.destination as? PersonDetailViewController else { return }
        detailPersonVC.phone = personList.first?.phone
        detailPersonVC.email = personList.first?.email
    }
    
    // MARK: — IBAction
    // @IBAction func logInDidTapped() {}
    
    // MARK: — Public Methods
    // func loadName(from string: String) { }
    
    // MARK: — Private Methods
    // private func setupUI() {}
    
    
}

// MARK: - Table view data source

extension PersonListViewController {
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
         let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
         var content = cell.defaultContentConfiguration()
         let person = personList[indexPath.row]
         
         content.text = person.name
         
         cell.contentConfiguration = content
         
         return cell
     }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}
