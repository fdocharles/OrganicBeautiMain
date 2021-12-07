//
//  AddNewCardViewController.swift
//  OrganicBeauti2
//
//  Created by user199800 on 12/7/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class AddNewCardViewController: UIViewController {

    
    /*@IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var cardNumberTxt: UITextField!
    @IBOutlet weak var cvvTxt: UITextField!
    @IBOutlet weak var expiaryDateTxt: UITextField!
     */
    
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var cardNumberTxt: UITextField!
    @IBOutlet weak var cvvTxt: UITextField!
    @IBOutlet weak var expiaryDateTxt: UITextField!
    
    
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
        
        saveButton.layer.cornerRadius = 25.0
    }
    
    
    @IBAction func SaveNewCard(_ sender: Any) {
        
        let name = nameTxt.text!
        let cardNumber = cardNumberTxt.text!
        let cvv = cvvTxt.text!
        let expiaryDate = expiaryDateTxt.text!
        
        let paymentCard = PaymentCard(name: name, cardNumber: cardNumber, cvv: cvv, expiaryDate: expiaryDate)
        
        let decoder = PropertyListDecoder()
        
        if let storedObject = UserDefaults.standard.object(forKey: "CustomerCurrentOrder") as? Data,
            var decodedOrder = try? decoder.decode(Order.self, from: storedObject)
        {
            decodedOrder.paymentMethod = paymentCard
            
            let encoder = PropertyListEncoder()
            if let encodedOrder = try? encoder.encode(decodedOrder){
                UserDefaults.standard.set(encodedOrder, forKey: "CustomerCurrentOrder")
            }
        }
        
        
    }
    
    
}
