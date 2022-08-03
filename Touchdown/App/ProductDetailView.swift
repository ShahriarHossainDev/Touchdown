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
            NavigationBarDetailView()
                .padding(.horizontal)
                //.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.top, UIApplication.shared.connectedScenes.flatMap { ($0 as? UIWindowScene)?.windows ?? [] }.first { $0.isKeyWindow }?.safeAreaInsets.top)
            
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            
            // Detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // Detail bottom part
            VStack(alignment: .center, spacing: 0) {
                // Rating + sizes
                RatingsSizeDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // Description
                ScrollView(.vertical, showsIndicators: false){
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } // Scroll
                
                // quantiy + Favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                
                // add to cart
                AddToCartDetailVIew()
                    .padding(.bottom, 20)
                
                Spacer()
            } // VStack
            .padding(.horizontal)
            .background(Color.white
                            .clipShape(CustomShape())
                            .padding(.top, -105))
            
        } // VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue).ignoresSafeArea(.all, edges: .all))
    }
}

// MARK: - Preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
