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
    static func getPersons() -> [Person] {
        let dataManager = DataManager()
        dataManager.loadData()
        var persons: [Person] = []
        var nameTest = ""
        for _ in 0...15 {
            nameTest = dataManager.names[Int.random(in: 0..<dataManager.names.count)]
            print("name - \(nameTest)")
            persons.append(
                Person(
                    name: dataManager.names[Int.random(in: 0..<dataManager.names.count)],
                    surname: dataManager.surnames[Int.random(in: 0..<dataManager.surnames.count)],
                    phone: dataManager.phones[Int.random(in: 0..<dataManager.phones.count)],
                    email: dataManager.emails[Int.random(in: 0..<dataManager.emails.count)])
            )
        }
        
        return persons
    }
}
