//
//  ProductCollectionViewCell.swift
//  OrganicBeauti2
//
//  Created by user194312 on 12/3/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productBrandLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    func setup(with product: Product){
        productTitleLabel.text = product.title
        productImage.image = product.image
        productBrandLabel.text = product.brand
        productPriceLabel.text = product.price
    }
    
    }
