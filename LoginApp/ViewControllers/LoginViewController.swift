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
    
    private let userData = User.createUser()
    
    override func viewDidLoad() {
        userNameTF.text = userData.userName
        passwordTF.text = userData.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = userData.userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func buttonLoginTapped() {
        guard userNameTF.text == userData.userName, passwordTF.text == userData.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please enter correct login or password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(
            title: "Oops!",
            message: "Your name is \(userData.userName)😉"
        )
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(
            title: "Oops!",
            message: "Your password is \(userData.password)😏"
        )
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

