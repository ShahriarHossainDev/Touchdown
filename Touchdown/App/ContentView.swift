//
//  ContentView.swift
//  Touchdown
//
//  Created by Shishir_Mac on 19/7/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        
                        FeaturedTabView()
                            .padding(.vertical, 20)
                            .frame(width: 300, height: 200, alignment: .center)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmet")
                        
                        LazyVGrid(columns: gridLayout, spacing: 13) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            } // loop
                        } // Grid
                        .padding(15)
                            
                        FooterView()
                            .padding(.horizontal)
                    } // : VStack
                } // : ScrollView
            }// : VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }// : ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
