//
//  RandomNumber.swift
//  Randomizer
//
//  Created by Nikita Kochubey on 5/23/24.
//

import SwiftUI

struct RandomNumber: View {
    @State private var startValue: String = " "
    @State private var endValue: String = ""
    @State private var result: Int?
    var body: some View {
        VStack {
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200,  height: 200)
                
                .overlay {
            }
            HStack(spacing: 10) {
                Spacer()
                Text("Start")
                TextField("Type here.....", text:  $startValue)
                Text("End")
                TextField("Type here.....", text:  $startValue)
            }
            .padding(50)
        }
        
    }
}

#Preview {
    RandomNumber()
}
