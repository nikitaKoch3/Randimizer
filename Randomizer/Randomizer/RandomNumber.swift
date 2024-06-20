//
//  RandomNumber.swift
//  Randomizer
//
//  Created by Nikita Kochubey on 5/23/24.
//

import SwiftUI

struct RandomNumber: View {
    @State private var startValue: String = ""
    @State private var endValue: String = ""
    @State private var result: String = ""
    var body: some View {
        VStack {
            Spacer()
            Text("Your number is ...")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200,  height: 200)
                .foregroundColor(.blue)
                .overlay {
                    Text("\(result)")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        
            }
            Spacer()
            
            HStack(spacing: 10) {
                Spacer()
                Text("Start:")
                TextField("Type here.....", text:  $startValue)
                Text("End:")
                TextField("Type here.....", text:  $endValue)
            }
            .foregroundColor(.blue)
            .padding(50)
            
            Button {
                
                if let res = generate(start: startValue, end: endValue) {
                    result = "\(res)"
                } else {
                    result = "Fill the textfields"
                }
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 250, height: 60)
                    .overlay {
                        Text("Generate")
                            .font(.largeTitle)
                            .foregroundColor(.white)
            }
            }
            Button(action: {
                clearTextFields()
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 60, height: 60)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .background(.blue)
            })
        }
        
    }
    func clearTextFields() {
        startValue = ""
        endValue = ""
    }
    func generate(start: String?, end: String?) -> Int? {
        guard let start = start, let start = Int(start) else { return nil}
        guard let end = end, let end = Int(end) else { return nil}
        
        let res = Int.random(in: start...end)
        return res
    }
}

#Preview {
    RandomNumber()
}
