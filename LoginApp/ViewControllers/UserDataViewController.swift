//
//  NavigationViewController.swift
//  LoginApp
//
//  Created by leogoba on 05.10.2022.
//

import UIKit

class UserDataViewController: UIViewController {
    
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet var firstNamePerson: UILabel!
    @IBOutlet var lastNamePerson: UILabel!
    @IBOutlet var companyPerson: UILabel!
    @IBOutlet var departmentPerson: UILabel!
    @IBOutlet var functionPerson: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        photoImage.image = UIImage(named: user.person.photo)
        title = user.person.fullName
        
        firstNamePerson.text = "Имя: \(user.person.firstName)"
        
        if let lastName = lastNamePerson.text {
            lastNamePerson.text = lastName + " " + user.person.lastName
        }
        if let companyName = companyPerson.text {
            companyPerson.text = companyName + " " + user.person.job.title
        }
        if let departmentName = departmentPerson.text {
            departmentPerson.text = departmentName + " " + user.person.job.jobTitle.rawValue
        }
        if let functionName = functionPerson.text {
            functionPerson.text = functionName + " " + user.person.job.department.rawValue
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? BioViewController else { return }
        imageVC.user = user
    }
}
