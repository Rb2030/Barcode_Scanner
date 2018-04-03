//
//  Product.swift
//  Barcode_Scanner
//
//  Created by Ross on 03/04/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import Foundation

struct ProductData: Codable {
    
    var products: [Product]
}

extension ProductData {
    private enum CodingKeys: String, CodingKey {
        case products = "Products"
    }
}

struct Product: Codable {
    
    var total: Int
    var title: String
    var description: String
    var list_price: String
    var lowest_recorded_price: String
    var highest_recorded_price: String
}

extension Product {
    private enum CodingKeys: String, CodingKey {
        
        case total = "total"
        case title = "title"
        case description = "description"
        case list_price = "list_price"
        case lowest_recorded_price = "lowest_recorded_price"
        case highest_recorded_price = "highest_recorded_price"
        
    }
}
