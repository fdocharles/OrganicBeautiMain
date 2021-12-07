//
//  PaymentCard.swift
//  OrganicBeauti2
//
//  Created by user199800 on 12/7/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import Foundation

struct PaymentCard: Codable {
    var name : String
    var cardNumber : String
    var cvv:String
    var expiaryDate: String
}
