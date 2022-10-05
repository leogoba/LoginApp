//
//  NavigationViewController.swift
//  LoginApp
//
//  Created by leogoba on 05.10.2022.
//

import UIKit

class UserDataVC: UINavigationController {
    
    private let qwe = Person.createPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = qwe.firstname + " " + qwe.secondname
    }
}
