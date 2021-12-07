//
//  CartTableViewCell.swift
//  OrganicBeauti2
//
//  Created by user194312 on 12/6/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class CartTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cartProductView: UIView!
    @IBOutlet weak var cartProductLabel: UILabel!
    @IBOutlet weak var cartProductTitleLabel: UILabel!
    @IBOutlet weak var cartProductPriceTable: UILabel!
    @IBOutlet weak var cartProductImage: UIImageView!
    @IBOutlet weak var quantityLabel: UILabel!
    
    @IBAction func stepper(_ sender: UIStepper) {
        quantityLabel.text = String(Int(sender.value))
    }
    
    func setup(with product: Product){
        cartProductLabel.text = product.brand
        cartProductTitleLabel.text = product.title
        cartProductPriceTable.text = product.price
        cartProductImage.image = UIImage(named: product.image)
    }
    
}
