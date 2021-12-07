//
//  AccountViewController.swift
//  OrganicBeauti2
//
//  Created by user199800 on 12/1/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var phoneTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Hide keyboard on focusout
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
        LoadCurrentUser()
    }
    
    
    func LoadCurrentUser() -> Void {
       let decoder = PropertyListDecoder()
        
        if let storedObject = UserDefaults.standard.object(forKey: "currentUser") as? Data,
            let decodedUser = try? decoder.decode(User.self, from: storedObject)
        {
            nameTxt.text = decodedUser.name
            phoneTxt.text = decodedUser.phone
            emailTxt.text = decodedUser.email
            passwordTxt.text = decodedUser.password
        }
    }
    
    
}




