//
//  ViewController.swift
//  AlertProject
//
//  Created by Abdulkadir Aydın on 26.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


    @IBAction func signupClicked(_ sender: Any) {
        
        //let alert = UIAlertController(title: "Error", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        
        //let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
        //alert.addAction(okButton)
        //self.present(alert, animated: true)
        
       /* if userNameText.text == ""  {
            let alert = UIAlertController(title: "Error", message: "Username is empty!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Return", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        } else if passwordText.text == ""  {
            let alert = UIAlertController(title: "Error", message: "Password is empty!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Return", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        } else if password2Text.text == ""  {
            let alert = UIAlertController(title: "Error", message: "Password2 is empty!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Return", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        } else if passwordText.text != password2Text.text  {
            let alert = UIAlertController(title: "Error", message: "Passwords is a different!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Return", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        } else {
            let alert = UIAlertController(title: "Succes", message: "User Created!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        } */
        
        if userNameText.text == ""  {
             makeAlert(titleInput: "Error", messageInput: "Username is empty!")
         } else if passwordText.text == ""  {
             makeAlert(titleInput: "Error", messageInput: "Password is empty!")
         } else if password2Text.text == ""  {
             makeAlert(titleInput: "Error", messageInput: "Passowrd2 is empty!")
         } else if passwordText.text != password2Text.text  {
             makeAlert(titleInput: "Error", messageInput: "Password Different!")
         } else {
             makeAlert(titleInput: "Succes", messageInput: "User Created!")
         }
        
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Return", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}

