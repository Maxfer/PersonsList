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
        for _ in 0...15 {
            let indexName = Int.random(in: 0..<dataManager.names.count)
            let indexSurname = Int.random(in: 0..<dataManager.surnames.count)
            let indexPhones = Int.random(in: 0..<dataManager.phones.count)
            let indexEmails = Int.random(in: 0..<dataManager.emails.count)
            
            persons.append(
                Person(
                    name: dataManager.names[indexName],
                    surname: dataManager.surnames[indexSurname],
                    phone: dataManager.phones[indexPhones],
                    email: dataManager.emails[indexEmails])
            )
            
            dataManager.names.remove(at: indexName)
            dataManager.surnames.remove(at: indexSurname)
            dataManager.phones.remove(at: indexPhones)
            dataManager.emails.remove(at: indexEmails)
        }
        
        return persons
    }
}
