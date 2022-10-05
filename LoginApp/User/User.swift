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
    
    static func createPerson() -> Person {
        Person(firstName: "Tim", lastName: "Cook")
    }
}




