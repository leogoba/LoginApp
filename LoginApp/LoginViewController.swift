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
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = userNameTF.text
        
        if userNameTF.text != "User" || passwordTF.text != "Password" {
            showAlert(
                title: "Invalid login or password",
                message: "Please enter correct login or password"
            )
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(
            title: "Oops!",
            message: "Your name is User😉"
        )
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(
            title: "Oops!",
            message: "Your password is Password😏"
        )
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in self.passwordTF.text = ""}
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

