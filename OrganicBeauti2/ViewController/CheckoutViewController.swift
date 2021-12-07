//
//  CheckoutViewController.swift
//  OrganicBeauti2
//
//  Created by user199800 on 12/6/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {

    
    /*@IBOutlet weak var shippingAddressBackgroundWrapper: UIView!
    @IBOutlet weak var totalsBackgroundWrapper: UIView!
    @IBOutlet weak var paymentMethodBackgorundWrapper: UIView!
    @IBOutlet weak var addNewCardButton: UIButton!
    @IBOutlet weak var confirmOrderButton: UIButton!
    
    
    
    @IBOutlet weak var subTotalValueLbl: UILabel!
    @IBOutlet weak var taxValueLbl: UILabel!
    @IBOutlet weak var shippingValueLbl: UILabel!
    @IBOutlet weak var discountValueLbl: UILabel!
    @IBOutlet weak var totalValueLbl: UILabel!
    
    
    @IBOutlet weak var address1Lbl: UILabel!
    @IBOutlet weak var cityProvinceLbl: UILabel!
    @IBOutlet weak var postalCodeLbl: UILabel!
    
    
    
    @IBOutlet weak var paymentMethodCardLbl: UILabel!
 */
    
    
    
    @IBOutlet weak var shippingAddressBackgroundWrapper: UIView!
    @IBOutlet weak var totalsBackgroundWrapper: UIView!
    @IBOutlet weak var paymentMethodBackgorundWrapper: UIView!
    @IBOutlet weak var addNewCardButton: UIButton!
    @IBOutlet weak var confirmOrderButton: UIButton!
    
    @IBOutlet weak var addNewAddressButton: UIButton!
    
    @IBOutlet weak var subTotalValueLbl: UILabel!
    @IBOutlet weak var taxValueLbl: UILabel!
    @IBOutlet weak var shippingValueLbl: UILabel!
    @IBOutlet weak var discountValueLbl: UILabel!
    @IBOutlet weak var totalValueLbl: UILabel!
    
    @IBOutlet weak var address1Ll: UILabel!
    @IBOutlet weak var cityProvinceLbl: UILabel!
    @IBOutlet weak var postalCodeLbl: UILabel!
    
    
    @IBOutlet weak var paymentMethodCardLbl: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        shippingAddressBackgroundWrapper.layer.cornerRadius = 15.0
        addNewAddressButton.layer.cornerRadius = 15.0
        totalsBackgroundWrapper.layer.cornerRadius = 15.0
        paymentMethodBackgorundWrapper.layer.cornerRadius = 15.0
        addNewCardButton.layer.cornerRadius = 10.0
        confirmOrderButton.layer.cornerRadius = 15.0
        
        
        
        InitialzeView()
        
    }
    

    func InitialzeView() -> Void {
        var shipping = 0.00
        var discount = 0.00
        var tax = 0.00
        var subTotal = 0.00
        
        
        let decoder = PropertyListDecoder()
        
        if let storedObject = UserDefaults.standard.object(forKey: "CustomerCurrentOrder") as? Data,
            let decodedOrder = try? decoder.decode(Order.self, from: storedObject)
        {
            
            print("***********")
            print(decodedOrder)
            
            for item in decodedOrder.orderItems
            {
                subTotal = subTotal + (item.price * Double(item.qty))
            }
            
            tax = subTotal * (13.00/100.00)
            
            //ShippingAddress
            address1Ll.text = decodedOrder.shippingAddress.address1
            cityProvinceLbl.text = "\(decodedOrder.shippingAddress.city) \(decodedOrder.shippingAddress.provinceCode)"
            postalCodeLbl.text = decodedOrder.shippingAddress.postalCode
            
            address1Ll.isHidden = address1Ll.text!.isEmpty
            cityProvinceLbl.isHidden = cityProvinceLbl.text!.isEmpty
            
            paymentMethodCardLbl.text = "**** **** **** \(decodedOrder.paymentMethod.cardNumber.suffix(4))"
            
            
        }
        
        
        
        subTotalValueLbl.text = "$ \(subTotal)"
        taxValueLbl.text = "$ \(tax)"
        shippingValueLbl.text = "$ \(shipping)"
        discountValueLbl.text = "$ \(discount)"
        totalValueLbl.text = "$ \(subTotal+tax+shipping+discount)"
        
        
        
    }
    
}
