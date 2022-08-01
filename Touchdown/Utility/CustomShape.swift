//
//  CustomShape.swift
//  Touchdown
//
//  Created by Shishir_Mac on 1/8/22.
//

import SwiftUI

struct CustomShape: Shape {
        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
            
            return Path(path.cgPath)
        }
}

// MARK: - Preview
struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
