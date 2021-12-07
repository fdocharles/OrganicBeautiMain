//
//  SignUpViewController.swift
//  OrganicBeauti2
//
//  Created by user199800 on 12/2/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var phoneTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Hide keyboard on focusout
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
        //Custom UI styles
        //Signup button
        signupButton.layer.cornerRadius = 25.0
    }
    
    
    @IBAction func SignUp(_ sender: Any) {
        let name = nameTxt.text!
        let phone = phoneTxt.text!
        let email = emailTxt.text!
        let password = passwordTxt.text!
        var isFormValid = true
        var errorMessage = ""
        
        if(name.isEmpty)
        {
            isFormValid = false
            errorMessage = "Invalid Name"
        }
        else if(phone.isEmpty)
        {
            
            isFormValid = false
            errorMessage = "Invalid Phone"
            
        }
        else if(email.isEmpty || isValidEmail(email))
        {
            
            isFormValid = false
            errorMessage = "Invalid Email"
            
        }
        else if(password.isEmpty)
        {
            
            isFormValid = false
            errorMessage = "Invalid Password"
            
        }

        if(!isFormValid)
        {
            // create the alert
            let alert = UIAlertController(title: "Warning", message: errorMessage , preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            //dsada
            let user = User(name: name, email: email, phone: phone, password: password)
            
            let encoder = PropertyListEncoder()
            
            if let encodedUser = try? encoder.encode(user){
                UserDefaults.standard.set(encodedUser, forKey: "currentUser")
            }
        }
    }
    
    
    func isValidEmail(_ email: String) -> Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: email)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet(charactersIn: "+1234567890")
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    
    
    
    
    
}
