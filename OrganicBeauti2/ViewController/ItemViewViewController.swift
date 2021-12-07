//
//  ItemViewViewController.swift
//  OrganicBeauti2
//
//  Created by user194312 on 12/4/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class ItemViewViewController: UIViewController {

    @IBOutlet weak var ProductViewImage: UIImageView!
    @IBOutlet weak var ProductViewName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var qtyLabel: UILabel!
    @IBAction func stepper(_ sender: UIStepper) {
        qtyLabel.text = String(Int(sender.value))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        getName()
    }
    
    func getName(){
        let decoder = PropertyListDecoder()
        
        if
            let storedobj = UserDefaults.standard.object(forKey: "selProduct") as? Data,
            let decodedProduct = try? decoder.decode(Product.self, from: storedobj)
        {
            selectedProducts = decodedProduct
            
            ProductViewImage.image = UIImage(named: selectedProducts.image)
            ProductViewName.text = selectedProducts.brand
            productTitle.text = selectedProducts.image
            productPrice.text = selectedProducts.price
        }
    }
}
