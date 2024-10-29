//
//  ProductCellCollectionViewCell.swift
//  WeShop
//
//  Created by THUTRA on 16/09/2024.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productimage: UIImageView!
    @IBOutlet weak var productTitel: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(Product: product){
        productimage.image = UIImage(named: Product.imageName)
        productTitel.text = Product.titel
        productPrice.text = Product.price
    }
}
