//
//  FooterView.swift
//  Touchdown
//
//  Created by Shishir_Mac on 19/7/22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Text("We offer the most cutting edge, comfortable, light weight and durable foolball helmets in the market at affordale prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("All Copyright Shahriar Hossain\n All right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } //: VStack
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
