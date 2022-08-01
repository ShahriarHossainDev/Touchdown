//
//  RatingsSizeDetailView.swift
//  Touchdown
//
//  Created by Shishir_Mac on 1/8/22.
//

import SwiftUI

struct RatingsSizeDetailView: View {
    // MARK: - Properties
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            //Rating
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}) {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }
                        
                    }
                }
                
            } // VStack
            
            Spacer()
            //Sizes
            VStack(alignment: .trailing, spacing: 3) {
                Text("Size")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}) {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5)
                                                .stroke(colorGray, lineWidth: 2))
                        }
                        
                    }
                }// HStack
            } // VStack
            
        } // HStack
    }
}

// MARK: - Preview
struct RatingsSizeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizeDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}