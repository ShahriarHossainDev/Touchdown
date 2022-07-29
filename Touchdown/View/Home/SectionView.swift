//
//  SectionView.swift
//  Touchdown
//
//  Created by Shishir_Mac on 29/7/22.
//

import SwiftUI

struct SectionView: View {
    
    // MARK: - Property
    @State var rotatcClockWise: Bool
    
    // MARK: - Body
    var body: some View {
        VStack (spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotatcClockWise ? 90 : -90))
            
            Spacer()
        } // VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - Preview
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotatcClockWise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
