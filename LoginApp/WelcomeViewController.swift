//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by leogoba on 01.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var gradientView: UIView!
    
    var username: String!
    
    var gradient: CAGradientLayer = {
            let gradient = CAGradientLayer()
            gradient.colors = [#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1).cgColor, #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1).cgColor]
            return gradient
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(username ?? "")!"

        gradient.frame = gradientView.bounds
        gradientView.layer.addSublayer(gradient)
    }
}

