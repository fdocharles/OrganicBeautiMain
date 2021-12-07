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
            
            print("******")
            print(decodedUser)
            var tempnameTxt = decodedUser.name
            var tempphoneTxt = decodedUser.phone
            var tempemailTxt = decodedUser.email
            var temppasswordTxt = decodedUser.password
            
            
            nameTxt.text = tempnameTxt
            //phoneTxt.text = tempphoneTxt
            //emailTxt.text = tempemailTxt
            //passwordTxt.text = temppasswordTxt
        }

    }
    
    
}




