//
//  User.swift
//  LoginApp
//
//  Created by leogoba on 05.10.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func createUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.createPerson()
        )
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func createPerson() -> Person {
        Person(
            firstName: "Тим",
            lastName: "Кук",
            photo: "TimCook",
            bio: """
                 Биография включает в себя не только основные факты жизни, такие как рождение, происхождение,
                 образование, служба, работа, семейные отношения и смерть; она также изображает опыт человека во время
                 событий его жизни. В отличие от профиля или автобиографии (резюме), биография представляет историю
                 жизни субъекта, выделяя различные аспекты его жизни, в том числе интимных подробностей, и может
                 включать в себя анализ личности субъекта.
                 """,
            job: Company.createCompany()
        )
    }
}

struct Company {
    let title: String
    let jobTitle: JobTitle
    let department: Department
    
    static func createCompany() -> Company {
        Company(
            title: "Apple",
            jobTitle: .ceo,
            department: .management
        )
    }
}

enum JobTitle: String {
    case ceo = "CEO"
    case cto = "CTO"
}

enum Department: String {
    case management = "Management"
    case marketing = "Marketing"
}
