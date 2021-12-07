//
//  CheckoutViewController.swift
//  OrganicBeauti2
//
//  Created by user199800 on 12/6/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {

    
    @IBOutlet weak var shippingAddressBackgroundWrapper: UIView!
    @IBOutlet weak var totalsBackgroundWrapper: UIView!
    @IBOutlet weak var paymentMethodBackgorundWrapper: UIView!
    @IBOutlet weak var addNewCardButton: UIButton!
    @IBOutlet weak var confirmOrderButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        shippingAddressBackgroundWrapper.layer.cornerRadius = 15.0
        totalsBackgroundWrapper.layer.cornerRadius = 15.0
        paymentMethodBackgorundWrapper.layer.cornerRadius = 15.0
        addNewCardButton.layer.cornerRadius = 25.0
        confirmOrderButton.layer.cornerRadius = 25.0
        
        
    }
    

    
    
    
    

}
