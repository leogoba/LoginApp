//
//  ViewController.swift
//  LoginApp
//
//  Created by leogoba on 01.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        if userNameTF.text != "User" || passwordTF.text != "Password" {
            showAlert(
                title: "Invalid login or password",
                message: "Please enter correct login or password"
            )
        }
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(
            title: "Oops!",
            message: "Your name is User😉"
        )
    }
    
    @IBAction func forgotPassword() {
        showAlert(
            title: "Oops!",
            message: "Your password is Password😏"
        )
    }
    
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }

    
}

