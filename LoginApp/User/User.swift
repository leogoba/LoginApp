//
//  User.swift
//  LoginApp
//
//  Created by leogoba on 05.10.2022.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func createUser() -> User {
        User(userName: "User", password: "Password", person: Person.createPerson())
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let company: String
    let department: String
    let function: String
    let textAboutPerson: String
    
    static func createPerson() -> Person {
        Person(
            firstName: "Tim",
            lastName: "Cook",
            company: "Apple",
            department: "Management",
            function: "CEO",
            textAboutPerson: "Биография включает в себя не только основные факты жизни, такие как рождение, происхождение, образование, служба, работа, семейные отношения и смерть; она также изображает опыт человека во время событий его жизни. В отличие от профиля или автобиографии (резюме), биография представляет историю жизни субъекта, выделяя различные аспекты его жизни, в том числе интимных подробностей, и может включать в себя анализ личности субъекта."
        )
    }
}




