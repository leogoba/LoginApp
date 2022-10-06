//
//  NavigationViewController.swift
//  LoginApp
//
//  Created by leogoba on 05.10.2022.
//

import UIKit

class UserDataViewController: UIViewController {
    
    
    @IBOutlet var firstNamePerson: UILabel!
    @IBOutlet var lastNamePerson: UILabel!
    @IBOutlet var companyPerson: UILabel!
    @IBOutlet var departmentPerson: UILabel!
    @IBOutlet var functionPerson: UILabel!
    
    private let createdPerson = Person.createPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = createdPerson.firstName + " " + createdPerson.lastName
        
//        if let firstName = firstNamePerson.text {
//            firstNamePerson.text = firstName + " " + qwe.firstName
//        }
        firstNamePerson.text = "Имя: \(createdPerson.firstName)"
        if let lastName = lastNamePerson.text {
            lastNamePerson.text = lastName + " " + createdPerson.lastName
        }
        if let companyName = companyPerson.text {
            companyPerson.text = companyName + " " + createdPerson.company
        }
        if let departmentName = departmentPerson.text {
            departmentPerson.text = departmentName + " " + createdPerson.department
        }
        if let functionName = functionPerson.text {
            functionPerson.text = functionName + " " + createdPerson.function
        }
    }
}
