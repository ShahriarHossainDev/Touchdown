//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Shishir_Mac on 31/7/22.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - Properties
    @State private var isAnimated: Bool = false
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // Price
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }// VStack
            .offset(y: isAnimated ? -50 : -75)
            
            Spacer()
            
            // Photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimated ? 0 : -35)
            
        } // HStack
        .onAppear{
            withAnimation(.easeOut(duration: 0.75)){
                isAnimated = true
            }
        }
    }
}

// MARK: - Preview
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
