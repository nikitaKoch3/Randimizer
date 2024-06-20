//
//  rollTheDice.swift
//  Randomizer
//
//  Created by Nikita Kochubey on 6/19/24.
//

import SwiftUI

struct rollTheDice: View {
    @State private var diceImage: String = "dice1"
    @State private var rotationAngle: Double = 0
    var body: some View {
        VStack {
            Text("ROLL THE DICE")
                .font(.largeTitle)
            Spacer()
            Image(diceImage)
                .resizable()
                .frame(width: 250, height: 250, alignment: .center)
                .rotationEffect(.degrees(rotationAngle))
                .animation(Animation.linear(duration: 0.5))
            Spacer()
            Button {
                roll()
            } label: {
                Text("Roll")
                    .font(.largeTitle)
                    .frame(width: 250, height: 100, alignment: .center)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(20)
            }
            
        }
    }
    func roll() {
         if rotationAngle == 0 {
            rotationAngle += 180
        } else {
            rotationAngle -= 180
        }
        
        
        let RandomNum = Int.random(in: 1...6)
        diceImage = "dice\(RandomNum)"
    }
}

#Preview {
    rollTheDice()
}
