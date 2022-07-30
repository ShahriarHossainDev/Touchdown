//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Shishir_Mac on 30/7/22.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NavBar
            
            
            // Header
            Text(sampleProduct.name)
            
            // Detail top part
            
            
            // Detail bottom part
            
            
            // Rating + sizes
            
            
            // Description
            
            
            // quantiy + Favourite
            
            
            // add to cart
            

        } // VStack
    }
}

// MARK: - Preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
