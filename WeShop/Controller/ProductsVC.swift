//
//  ProductsVC.swift
//  WeShop
//
//  Created by THUTRA on 16/09/2024.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource ,UICollectionViewDelegate {
    
    @IBOutlet weak var productConllectionView: UICollectionView!
    private(set) public var products = [product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        productConllectionView.dataSource = self
        productConllectionView.delegate = self
    }
    
    func initProducts(Category: category) {
        products = DataServices.instance.getproduct(forcategoryTitel: Category.titel)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateViews(Product: product)
            return cell
        }
        return ProductCell()
    }
}
