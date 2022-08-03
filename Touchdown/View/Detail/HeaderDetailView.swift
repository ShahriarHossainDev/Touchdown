//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Shishir_Mac on 31/7/22.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        VStack (alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } // VStack
        .foregroundColor(.white)
    }
}

// MARK: - Preview
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
