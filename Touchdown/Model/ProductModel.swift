//
//  ProductModel.swift
//  Touchdown
//
//  Created by Shishir_Mac on 29/7/22.
//

import Foundation

struct Product: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
