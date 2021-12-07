//
//  Product.swift
//  OrganicBeauti2
//
//  Created by user194312 on 12/3/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

struct Product: Codable {
    
    let title: String
    let brand: String
    let price: String
    let image: String
    
}

let products: [Product] = [
    Product(title: "Facial Scrub" , brand: "Sukin" , price: "$24.99" , image: "DETOXIFYING FACIAL SCRUB  SUPER GREENS 125ML"),
    Product(title: "Night Cream" ,brand: "Sukin" , price: "$35.99" , image: "HYDRAFUSION NIGHT CREAM  HYDRATION 60ML"),
    Product(title: "Cleansing Water" , brand: "Sukin" , price: "$14.99" , image :"MICELLAR CLEANSING WATER 250ML"),
    Product(title: "Cleansing Lotion" ,brand: "Sukin" , price: "$26.99" , image: "GEL CLEANSER  SENSITIVE 125ML"),
    Product(title: "Facial Tonic" ,brand: "Sukin" , price: "$18.99" , image:"CLARIFYING FACIAL TONIC  OIL BALANCING 125ML"),
    Product(title: "Clay Masque" ,brand: "Sukin" , price: "$30.99" , image: "DETOXIFYING CLAY MASQUE  SUPER GREENS 100ML"),
    Product(title: "Facial Cleanser" ,brand: "Sukin" , price: "$22.99" , image:"FOAMING FACIAL CLEANSER PUMP  SIGNATURE 125ML"),
    Product(title: "Night Moisturiser" ,brand: "Sukin" , price: "$19.99" , image: "GLOW NIGHT MOISTURISER  BRIGHTENING  50ML"),
    Product(title: "Facial Masque" ,brand: "Sukin" , price: "$31.99" , image: "HYDRATING FACIAL MASQUE  SIGNATURE 100ML"),
    Product(title: "Mist Toner" ,brand: "Sukin" , price: "$16.99" , image: "HYDRATING MIST TONER  SIGNATURE 125ML"),
    Product(title: "Facial Moisturiser" ,brand: "Sukin" , price: "$21.99" , image: "NUTRIENT RICH FACIAL MOISTURISER  SUPER GREENS 125ML"),
    Product(title: "Cleansing Oil" ,brand: "Sukin" , price: "$28.99" , image: "PURIFYING GEL CLEANSER  OIL BALANCING 125ML"),
    Product(title: "Gel Cleanser" ,brand: "Sukin" , price: "$24.99" , image: "RADIANCE GEL CLEANSER  BRIGHTENING  125ML")
]

let clenserProducts: [Product] = [
    Product(title: "Cleansing Water" , brand: "Sukin" , price: "$14.99" , image :"MICELLAR CLEANSING WATER 250ML"),
    Product(title: "Cleansing Lotion" ,brand: "Sukin" , price: "$26.99" , image: "GEL CLEANSER  SENSITIVE 125ML"),
    Product(title: "Facial Cleanser" ,brand: "Sukin" , price: "$22.99" , image:"FOAMING FACIAL CLEANSER PUMP  SIGNATURE 125ML"),
    Product(title: "Cleansing Oil" ,brand: "Sukin" , price: "$28.99" , image: "PURIFYING GEL CLEANSER  OIL BALANCING 125ML"),
    Product(title: "Gel Cleanser" ,brand: "Sukin" , price: "$24.99" , image: "RADIANCE GEL CLEANSER  BRIGHTENING  125ML")
]

let exProducts: [Product] = [
    Product(title: "Night Cream" ,brand: "Sukin" , price: "$35.99" , image: "REHYDRATING GEL CREAM  HYDRATION 60ML"),
    Product(title: "Night Moisturiser" ,brand: "Sukin" , price: "$19.99" , image: "GLOW NIGHT MOISTURISER  BRIGHTENING  50ML"),
    Product(title: "Facial Moisturiser" ,brand: "Sukin" , price: "$21.99" , image:"NUTRIENT RICH FACIAL MOISTURISER  SUPER GREENS 125ML")
]

let tonerProducts: [Product] = [
    Product(title: "Facial Tonic" ,brand: "Sukin" , price: "$18.99" , image: "CLARIFYING FACIAL TONIC  OIL BALANCING 125ML"),
    Product(title: "Mist Toner" ,brand: "Sukin" , price: "$16.99" , image: "HYDRATING MIST TONER  SIGNATURE 125ML")
]

let maskProducts: [Product] = [
    Product(title: "Clay Masque" ,brand: "Sukin" , price: "$30.99" , image: "DETOXIFYING CLAY MASQUE  SUPER GREENS 100ML"),
    Product(title: "Facial Masque" ,brand: "Sukin" , price: "$31.99" , image: "HYDRATING FACIAL MASQUE  SIGNATURE 100ML")
]

let newProducts: [Product] = [
    Product(title: "Cleansing Water" , brand: "Sukin" , price: "$14.99" , image : "DETOXIFYING FACIAL SCRUB  SUPER GREENS 125ML"),
    Product(title: "Cleansing Lotion" ,brand: "Sukin" , price: "$26.99" , image: "GEL CLEANSER  SENSITIVE 125ML"),
    Product(title: "Facial Cleanser" ,brand: "Sukin" , price: "$22.99" , image:"FOAMING FACIAL CLEANSER PUMP  SIGNATURE 125ML"),
    Product(title: "Cleansing Oil" ,brand: "Sukin" , price: "$28.99" , image: "PURIFYING GEL CLEANSER  OIL BALANCING 125ML"),
    Product(title: "Gel Cleanser" ,brand: "Sukin" , price: "$24.99" , image: "RADIANCE GEL CLEANSER  BRIGHTENING  125ML")
]

var selectedProducts = Product(title: "Clay Masque" ,brand: "Sukin" , price: "$30.99" , image: "DETOXIFYING CLAY MASQUE  SUPER GREENS 100ML")
