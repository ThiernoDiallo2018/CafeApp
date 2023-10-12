//
//  FoodModel.swift
//  CafeApp
//
//  Created by Thierno Diallo on 10/7/23.
//

import Foundation
import UIKit

class Food: ProductDetail {
    var picture: UIImage
    var name: String
    var description: String
    var price: String
    
    init(picture: UIImage, name: String, description: String, price: String) {
        self.picture = picture
        self.name = name
        self.description = description
        self.price = price
    }
}

