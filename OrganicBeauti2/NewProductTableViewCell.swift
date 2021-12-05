//
//  NewProductTableViewCellTableViewController.swift
//  OrganicBeauti2
//
//  Created by user194312 on 12/4/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class NewProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var newProductLabel: UILabel!
    @IBOutlet weak var newProductPriceLabel: UILabel!
    @IBOutlet weak var newProductNameLabel: UILabel!
    @IBOutlet weak var newProductImage: UIImageView!
    
    func setup(with product: Product){
        newProductNameLabel.text = product.brand
        newProductImage.image = product.image
        newProductLabel.text = product.title
        newProductPriceLabel.text = product.price
    }
    
    
    
}
