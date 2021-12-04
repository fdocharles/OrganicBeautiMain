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
        User(Name: "Tessie Black", Email: "tblack@gmail.com", Phone: "(226) 234-7896", Password: "tblack"),
        User(Name: "Amanda James", Email: "ajames@gmail.com", Phone: "(231) 234-4589", Password: "ajames"),
        User(Name: "Stacey Morgan", Email: "smorgan@gmail.com", Phone: "(345) 556-5372", Password: "smorgan")
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Custom UI element styles
        //SignIn button
        signinButton.layer.cornerRadius = 25.0
    }

    @IBAction func SignIn(_ sender: Any) {
        
        let email = emailText.text!
        let password = passwordText.text!
        var currentUser = User(Name: "", Email: "", Phone: "", Password: "")
        
        if(!email.isEmpty && !password.isEmpty)
        {
            var isValidUser = false;
            
            users.forEach { user in
                if(user.Email == email && user.Password == password)
                {
                    isValidUser = true
                    currentUser = User(Name: user.Name, Email: user.Email, Phone: user.Phone, Password: user.Password)
                }
            }
            
            if(isValidUser == true)
            {
                print(currentUser)
                //performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
                
                //prepare(for: <#T##UIStoryboardSegue#>, sender: <#T##Any?#>)
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
}

