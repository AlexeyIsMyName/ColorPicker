//
//  ContentView.swift
//  ColorPicker
//
//  Created by ALEKSEY SUSLOV on 30.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var redValue = 105.0
    @State var greenValue = 105.0
    @State var blueValue = 105.0
    
    var body: some View {
        VStack {
            Color(red: 1 / 255 * redValue,
                  green: 1 / 255 * greenValue,
                  blue: 1 / 255 * blueValue)
                .frame(height: 150)
            
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
