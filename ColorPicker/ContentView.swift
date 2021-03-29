//
//  ContentView.swift
//  ColorPicker
//
//  Created by ALEKSEY SUSLOV on 30.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var textField = "255"
    @State var sliderValue = 105.0
    
    var body: some View {
        VStack {
            HStack {
                Text("\(lround(sliderValue))")
                Slider(value: $sliderValue, in: 0...255, step: 1)
                TextField("", value: $sliderValue, formatter: NumberFormatter())
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 45)
            }.padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
