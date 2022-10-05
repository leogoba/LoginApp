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
    let firstname: String
    let secondname: String
    
    static func createPerson() -> Person {
        Person(firstname: "Tim", secondname: "Cook")
    }
}




