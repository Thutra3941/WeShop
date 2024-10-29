//
//  DataServices.swift
//  WeShop
//
//  Created by THUTRA on 15/09/2024.
//

import Foundation
class DataServices{
    static let instance  = DataServices()
    
    func GetCategorys() -> [category] {
        let categoryes = [
            category(titel: "Furniture", imageName: "furniture.png"),
            category(titel: "Food", imageName: "food.jpg"),
            category(titel: "Housewares", imageName: "housewares"),
            category(titel: "Toy", imageName: "toy.jpg")
        ]
        return categoryes
    }
    
    func getproduct(forcategoryTitel title: String) -> [product] {
        switch title {
        case "Furniture":
            return [
                product(titel: "Chair", price: "30$", imageName: "chair.png"),
                product(titel: "Commode", price: "100$", imageName: "commode.png"),
                product(titel: "miror", price: "20$", imageName: "miror.png"),
                product(titel: "table", price: "40$", imageName: "tale.png")
            ]
            
        case "Housewares":
            return [
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png"),
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png"),
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png"),
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png"),
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png")
            ]
            
        case "Food":
            return [
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png"),
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png"),
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png"),
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png"),
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png")
            ]
        
        case "Toy":
            return [
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png"),
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png"),
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png"),
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png"),
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png")
            ]
        default:
            return [
                product(titel: "Electric cooker", price: "20$", imageName: "electric-cooker.png")
            ]
        }
    }
}
