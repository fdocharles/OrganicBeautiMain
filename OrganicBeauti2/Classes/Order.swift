//
//  Order.swift
//  OrganicBeauti2
//
//  Created by user199800 on 12/3/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import Foundation

struct Order : Codable{
    var orderItems: [OrderItem]
    var shippingAddress: Address
    var paymentMethod: PaymentCard
}
