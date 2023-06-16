//
//  PersonDetailViewController.swift
//  PersonsList
//
//  Created by Максим Шкрябин on 16.06.2023.
//

import UIKit

class PersonDetailViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!

    var phone: String!
    var email: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
