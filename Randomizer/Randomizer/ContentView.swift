//
//  ContentView.swift
//  Randomizer
//
//  Created by Nikita Kochubey on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Randomize")
                    .font(.largeTitle)
                Spacer()
                NavigationLink(destination: RandomNumber()) {
                    Text("Random Rumber")
                        .frame(width: 250, height: 60)
                        .font(.title)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
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
                            Text("Heads OR Tails")
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
                            Text("Fortune Wheel")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                }

                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
