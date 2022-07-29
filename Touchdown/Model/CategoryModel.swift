//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Shishir_Mac on 21/7/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
