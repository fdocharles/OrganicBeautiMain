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

}


