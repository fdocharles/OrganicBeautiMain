//
//  HomeViewController.swift
//  OrganicBeauti2
//
//  Created by user194312 on 12/6/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController , UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //getName()
        tableView.dataSource = self
        tableView.delegate = self
    }

}

extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewProductTableViewCell", for: indexPath) as! NewProductTableViewCell
        cell.setup(with: newProducts[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selProductName = newProducts[indexPath.row].title
        let selProductBrand = newProducts[indexPath.row].brand
        let selProductPrice = newProducts[indexPath.row].price
        let selProductImage = newProducts[indexPath.row].image
        
        selectedProducts = Product(title: selProductName, brand: selProductBrand, price: selProductPrice, image: selProductImage)
        let encoder = PropertyListEncoder()
        if let encodedName = try? encoder.encode(selectedProducts) {
            UserDefaults.standard.set(encodedName, forKey: "selProduct")
        }

    }
    
    func getName(){
        let decoder = PropertyListDecoder()
        
        if
            let storedobj = UserDefaults.standard.object(forKey: "selProduct") as? Data,
            let decodedProduct = try? decoder.decode(Product.self, from: storedobj)
        {
            selectedProducts = decodedProduct
        }
    }
    
    
}




