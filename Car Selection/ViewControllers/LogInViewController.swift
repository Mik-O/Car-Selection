//
//  ViewController.swift
//  Car Selection
//
//  Created by Таня Кожевникова on 27.06.2025.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: -IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: -Private properties
    private let user = User.getUserData()
    
    // MARK: -Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.user = user
        }
    
    // MARK: -IB Action
    @IBAction func logInPressed() {
        guard
            userNameTextField.text == user.username,
            passwordTextField.text == user.password
        else {
            showAlert(
                title: "Invalid login or password",
                message: "Pleace, enter correct login and password"
            )
            return
        }
        
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    @IBAction func forgotUserNamePressed(_ sender: UIButton) {
        showAlert(title: "Oops!",
                  message: "Your name is \(user.username) 😉")
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Oops!",
                  message: "Your password is \(user.password) 😉")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField .text = nil
        passwordTextField.text = nil
    }
}


    // MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAtion = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAtion)
        present(alert, animated: true)
    }
}

    // MARK: - Work with keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInPressed()
        }
        return true
    }
}
