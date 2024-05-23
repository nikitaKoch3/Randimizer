//
//  ContentView.swift
//  Randomizer
//
//  Created by Nikita Kochubey on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Randomize")
                .font(.largeTitle)
            Spacer()
            Button {
                print()
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .frame( width: 200, height: 60)
            }
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
