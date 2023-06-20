//
//  Person.swift
//  PersonsList
//
//  Created by Максим Шкрябин on 16.06.2023.
//

struct Person {
     
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        for index in 0...15 {
            persons.append(
                Person(
                    name: DataManager.shared.names[index],
                    surname: DataManager.shared.surnames[index],
                    phone: DataManager.shared.phones[index],
                    email: DataManager.shared.emails[index])
            )
        }
        return persons
    }
}
