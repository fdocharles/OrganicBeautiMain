//
//  SearchViewController.swift
//  OrganicBeauti2
//
//  Created by user194312 on 12/3/21.
//  Copyright © 2021 user199800. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    var filteredProducts: [Product] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        searchBar.delegate = self as! UISearchBarDelegate
        
        filteredProducts = products
        
    }
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
             filteredProducts = products
        }
        else if sender.selectedSegmentIndex == 1{
            filteredProducts = clenserProducts
        }
        else if sender.selectedSegmentIndex == 2{
            filteredProducts = exProducts
        }
        else if sender.selectedSegmentIndex == 3{
            filteredProducts = tonerProducts
        }
        else if sender.selectedSegmentIndex == 4{
            filteredProducts = maskProducts
        }
        
        self.collectionView.reloadData()
    }

}

extension SearchViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filteredProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
        cell.setup(with: filteredProducts[indexPath.row])
        return cell
    }
}

extension SearchViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}

extension SearchViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selProductName = filteredProducts[indexPath.row].title
        let selProductBrand = filteredProducts[indexPath.row].brand
        let selProductPrice = filteredProducts[indexPath.row].price
        let selProductImage = filteredProducts[indexPath.row].image
        
        selectedProducts = Product(title: selProductName, brand: selProductBrand, price: selProductPrice, image: selProductImage)
        let encoder = PropertyListEncoder()
        if let encodedName = try? encoder.encode(selectedProducts) {
            UserDefaults.standard.set(encodedName, forKey: "selProduct")
        }
        
    }
}

extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredProducts = []
        
        if searchText == ""{
            filteredProducts = products
        }
        for word in products {
            if (word.title.uppercased().contains(searchText.uppercased()) ||  word.brand.uppercased().contains(searchText.uppercased())){
                filteredProducts.append(word)
            }
        }
        
        self.collectionView.reloadData()
    }
    
    
    
}
