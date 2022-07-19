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
        FooterView()
            .padding(.horizontal)
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
