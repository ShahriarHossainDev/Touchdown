//
//  AddToCartDetailVIew.swift
//  Touchdown
//
//  Created by Shishir_Mac on 3/8/22.
//

import SwiftUI

struct AddToCartDetailVIew: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        Button(action: {}) {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }// Button
        .padding(15)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

// MARK: - Preview
struct AddToCartDetailVIew_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailVIew()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
