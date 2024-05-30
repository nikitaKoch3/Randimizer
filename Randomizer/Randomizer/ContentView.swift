//
//  ContentView.swift
//  Randomizer
//
//  Created by Nikita Kochubey on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Randomize")
                .font(.largeTitle)
            Spacer()
            Button {
                print()
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .frame( width: 250, height: 60)
                    .overlay {
                        Text("Random Number")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    }
                Button {
                    print()
                } label: {
                RoundedRectangle(cornerRadius: 10)
                    .frame( width: 250, height: 60)
                    .overlay {
                        Text("Roll the Dice")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
            }
            Button {
                print()
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .frame( width: 250, height: 60)
                    .overlay {
                        Text("Random word")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
            }
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
