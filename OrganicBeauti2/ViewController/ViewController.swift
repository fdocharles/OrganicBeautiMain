//
//  ViewController.swift
//  OrganicBeauti2
//
//  Created by user199800 on 12/1/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    //Users
    var users = [
        User(name: "Tessie Black", email: "tblack@gmail.com", phone: "(226) 234-7896", password: "tblack"),
        User(name: "Amanda James", email: "ajames@gmail.com", phone: "(231) 234-4589", password: "ajames"),
        User(name: "Stacey Morgan", email: "smorgan@gmail.com", phone: "(345) 556-5372", password: "smorgan")
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
        //Custom UI element styles
        //SignIn button
        signinButton.layer.cornerRadius = 25.0
    }

    @IBAction func SignIn(_ sender: Any) {
        
        let email = emailText.text!
        let password = passwordText.text!
        var currentUser = User(name: "", email: "", phone: "", password: "")
        
        if(!email.isEmpty && !password.isEmpty)
        {
            var isValidUser = false;
            
            users.forEach { user in
                if(user.email == email && user.password == password)
                {
                    isValidUser = true
                    currentUser = User(name: user.name, email: user.email, phone: user.phone, password: user.password)
                }
            }
            
            if(isValidUser == true)
            {
                print(currentUser)
                StoreCurrentUser(user : currentUser)
            }
            else
            {
                ShowInvalidCredentialsMessage()
            }
            
        }
        else
        {
            
            ShowInvalidCredentialsMessage()
            
        }
    }
    
    func ShowInvalidCredentialsMessage() {
        // create the alert
        let alert = UIAlertController(title: "Invalid", message: "Username or Password is invalid", preferredStyle: UIAlertController.Style.alert)

        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    func StoreCurrentUser(user: User) -> Void {
        let encoder = PropertyListEncoder()
        if let encodedOrder = try? encoder.encode(user)
        {
            UserDefaults.standard.set(encodedOrder, forKey: "currentUser")
        }
    }
}

