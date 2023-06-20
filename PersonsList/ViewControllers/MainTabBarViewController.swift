//
//  MainTabBarViewController.swift
//  PersonsList
//
//  Created by Максим Шкрябин on 16.06.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    private var persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passingThroughTabs()
    }
    
    private func passingThroughTabs() {
        viewControllers?.forEach({ viewController in
            if let navigationController = viewController as? UINavigationController {
                if let personListVC = navigationController.topViewController as? PersonListViewController {
                    personListVC.personList = persons
                } else if let contactListVC = navigationController.topViewController as? ContactListViewController {
                    contactListVC.personList = persons
                }
            }
        })
    }
    
}
