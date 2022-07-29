//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Shishir_Mac on 21/7/22.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(
                    header: Text("Header"),
                    footer: Text("Footer")
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            } // : Grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }// : Scroll
    }
}

// MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
