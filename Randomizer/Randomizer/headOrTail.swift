//
//  headOrTail.swift
//  Randomizer
//
//  Created by Nikita Kochubey on 6/20/24.
//

import SwiftUI

struct headOrTail: View {
    @State private var imageName: String = "head"
    @State private var rotationDegree: Double = 0
    var body: some View {
        VStack {
            Text("HEAD OR TAIL")
                .font(.largeTitle)
                .fontWeight(.black)
            Spacer()
            Image(imageName)
                .resizable()
                .frame(width: 300, height: 300)
                .rotation3DEffect(
                    .degrees(rotationDegree),
                                          axis: (x: 1.0, y: 0.0, z: 0.0)
                )
                .animation(Animation.linear(duration: 0.5))
                .onTapGesture {
                    if rotationDegree == 0 {
                        rotationDegree += 720
                    } else {
                        rotationDegree -= 360
                    }
                    setRandomImage()
                }
            Spacer()
        }
    }
    func setRandomImage() {
        let result = Int.random(in: 1...2)
        if result == 1 {
            imageName = "head"
        } else {
            imageName = "tail"
        }
    }
}

#Preview {
    headOrTail()
}
