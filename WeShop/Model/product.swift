//
//  product.swift
//  WeShop
//
//  Created by THUTRA on 16/09/2024.
//

import Foundation
struct product {
    private(set) public var titel: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(titel: String, price: String, imageName: String) {
        self.titel = titel
        self.price = price
        self.imageName = imageName
    }
}
