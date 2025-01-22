//
//  ContentView.swift
//  CryptoApp
//
//  Created by user@59 on 19/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            
            VStack{
                Text("Accent Color")
                    .foregroundColor(Color.theme.red)
            }
        }
    }
}

#Preview {
    ContentView()
}
