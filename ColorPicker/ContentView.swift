//
//  ContentView.swift
//  ColorPicker
//
//  Created by ALEKSEY SUSLOV on 30.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var redValue = Double.random(in: 0...255)
    @State var greenValue = Double.random(in: 0...255)
    @State var blueValue = Double.random(in: 0...255)
    
    var body: some View {
        VStack {
            Color(red: 1 / 255 * redValue,
                  green: 1 / 255 * greenValue,
                  blue: 1 / 255 * blueValue)
                .frame(height: 150)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.gray)
                )
            
            ColoredSliderTextBox(colorLine: .red, value: $redValue)
            ColoredSliderTextBox(colorLine: .green, value: $greenValue)
            ColoredSliderTextBox(colorLine: .blue, value: $blueValue)
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
