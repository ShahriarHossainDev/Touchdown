//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Shishir_Mac on 20/7/22.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - Property
    
    //let player: Player
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } // : TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: - Preview
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
