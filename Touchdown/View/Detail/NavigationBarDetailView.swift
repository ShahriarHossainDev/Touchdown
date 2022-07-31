//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Shishir_Mac on 30/7/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        } // HStack
    }
}

// MARK: - Preview

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
