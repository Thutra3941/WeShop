//
//  CategoryCelTableViewCellTableViewCell.swift
//  WeShop
//
//  Created by THUTRA on 15/09/2024.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryBb: UIImageView!
    @IBOutlet weak var categoryTitel: UILabel!
    
    func updateView(Category: category){
        categoryBb.image = UIImage(named: Category.imageName)
        categoryTitel.text = Category.titel
    }
}
