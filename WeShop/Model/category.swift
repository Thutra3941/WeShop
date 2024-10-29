//
//  category.swift
//  WeShop
//
//  Created by THUTRA on 15/09/2024.
//

import Foundation
struct category{
   private(set) public var titel: String // doc duong nhung khong sua duoc
   private(set) public var imageName: String
    
    init(titel: String!, imageName: String) {
        self.titel = titel //phan biet
        self.imageName = imageName
    }
}
