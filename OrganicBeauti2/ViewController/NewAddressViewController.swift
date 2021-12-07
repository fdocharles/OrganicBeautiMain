//
//  NewAddressViewController.swift
//  OrganicBeauti2
//
//  Created by user199800 on 12/7/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class NewAddressViewController: UIViewController {
    
    @IBOutlet weak var aptStreetTxt: UITextField!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var provinceTxt: UITextField!
    @IBOutlet weak var postalCodeTxt: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        saveButton.layer.cornerRadius = 25.0
    }
    
    @IBAction func SaveNewAddress(_ sender: Any) {
        
        let address1 = aptStreetTxt.text!
        let city = cityTxt.text!
        let province = provinceTxt.text!
        let postalCode = postalCodeTxt.text!
        
        let address = Address(address1: address1, address2: "", city: city, provinceCode: province, postalCode: postalCode)
        
        let decoder = PropertyListDecoder()
        
        if let storedObject = UserDefaults.standard.object(forKey: "CustomerCurrentOrder") as? Data,
            var decodedOrder = try? decoder.decode(Order.self, from: storedObject)
        {
            decodedOrder.shippingAddress = address
            
            let encoder = PropertyListEncoder()
            if let encodedOrder = try? encoder.encode(decodedOrder){
                UserDefaults.standard.set(encodedOrder, forKey: "CustomerCurrentOrder")
            }
        }

    }
    
    
    

}
