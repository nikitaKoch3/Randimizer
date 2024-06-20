//
//  fortuneWheel.swift
//  Randomizer
//
//  Created by Nikita Kochubey on 6/20/24.
//

import SwiftUI

struct CirclePart: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockWise: Bool
    
    func path(in rect: CGRect) -> Path {
        <#code#>
    }
}

struct fortuneWheel: View {
    var body: some View {
        VStack {
            Text ("FORTUNE WHEEL")
                .font(.largeTitle)
                .fontWeight(.black)
            Spacer()
            
            Spacer()
        }
    }
}
#Preview {
    fortuneWheel()
}
