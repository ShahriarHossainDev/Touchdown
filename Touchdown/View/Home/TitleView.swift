//
//  TitleView.swift
//  Touchdown
//
//  Created by Shishir_Mac on 29/7/22.
//

import SwiftUI

struct TitleView: View {
    // MARK: - Property
    var title: String
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Text("Helmet")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        } // HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom,10)
    }
}

// MARK: - Preview
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
