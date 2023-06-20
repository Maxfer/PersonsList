//
//  DataManager.swift
//  PersonsList
//
//  Created by Максим Шкрябин on 16.06.2023.
//

class DataManager {
    
    static let shared = DataManager()
    
    // MARK: — Names
    let names = [
        "Noah",
        "Liam",
        "Mason",
        "Jacob",
        "William",
        "Ethan",
        "Michael",
        "Alexander",
        "James",
        "Daniel",
        "Amelia",
        "Olivia",
        "Jessica",
        "Emily",
        "Lily",
        "Ava",
        "Heather",
        "Sophie",
        "Mia",
        "Isabella"
    ].shuffled()
    
    // MARK: — Surnames
    let surnames = [
        "Evans",
        "Stone",
        "Roberts",
        "Mills",
        "Lewis",
        "Morgan",
        "Florence",
        "Campbell",
        "Bronte",
        "Bell",
        "Adams",
        "Williams",
        "Peters",
        "Gibson",
        "Martin",
        "Jordan",
        "Jackson",
        "Grant",
        "Davis",
        "Collins",
        "Bradley",
        "Barlow"
    ].shuffled()
    
    // MARK: — Phones
    var phones: [String] {
                var phonesString: [String] = []
            for _ in 1...30 {
                let code1 = String(Int.random(in: 1...9))
                let code2 = String(Int.random(in: 100...299))
                let code3 = String(Int.random(in: 300...999))
                let code4 = String(Int.random(in: 10...99))
                let code5 = String(Int.random(in: 10...99))
                phonesString.append("+\(code1)(\(code2))\(code3)-\(code4)-\(code5)")
            }
            return phonesString
        }
    // MARK: — Emails
    var emails: [String] {
        var emailsString: [String] = []
        for _ in 1...30 {
                let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
                let domens = ["mail.ru", "gmail.com", "yandex.ru", "list.ru", "rambler.ru"]
                let name = String((0..<7).map{ _ in letters.randomElement()! })
                let domen = domens.randomElement() ?? "ya.ru"
            emailsString.append("\(name)@\(domen)")
            }
        return emailsString
        }
    private init() {}
}
//class DataManager {
//    var names: [String] = []
//    var surnames: [String] = []
//    var phones: [String] = []
//    var emails: [String] = []
//
//    func loadData() {
//        // MARK: — Names
//        names = [
//            "Noah",
//            "Liam",
//            "Mason",
//            "Jacob",
//            "William",
//            "Ethan",
//            "Michael",
//            "Alexander",
//            "James",
//            "Daniel",
//            "Amelia",
//            "Olivia",
//            "Jessica",
//            "Emily",
//            "Lily",
//            "Ava",
//            "Heather",
//            "Sophie",
//            "Mia",
//            "Isabella"
//        ]
//        names.shuffle()
//
//        // MARK: — Surnames
//        surnames = [
//            "Evans",
//            "Stone",
//            "Roberts",
//            "Mills",
//            "Lewis",
//            "Morgan",
//            "Florence",
//            "Campbell",
//            "Bronte",
//            "Bell",
//            "Adams",
//            "Williams",
//            "Peters",
//            "Gibson",
//            "Martin",
//            "Jordan",
//            "Jackson",
//            "Grant",
//            "Davis",
//            "Collins",
//            "Bradley",
//            "Barlow"
//        ]
//        surnames.shuffle()
//
//        // MARK: — Phones
//        for _ in 1...30 {
//            let code1 = String(Int.random(in: 1...9))
//            let code2 = String(Int.random(in: 100...299))
//            let code3 = String(Int.random(in: 300...999))
//            let code4 = String(Int.random(in: 10...99))
//            let code5 = String(Int.random(in: 10...99))
//            phones.append("+\(code1)(\(code2))\(code3)-\(code4)-\(code5)")
//        }
//
//        // MARK: — Emails
//        for _ in 1...30 {
//            let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
//            let domens = ["mail.ru", "gmail.com", "yandex.ru", "list.ru", "rambler.ru"]
//            let name = String((0..<7).map{ _ in letters.randomElement()! })
//            let domen = domens.randomElement() ?? "ya.ru"
//            emails.append("\(name)@\(domen)")
//        }
//
//    }
//}
