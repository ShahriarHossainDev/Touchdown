//
//  Shop.swift
//  Touchdown
//
//  Created by Shishir_Mac on 3/8/22.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
