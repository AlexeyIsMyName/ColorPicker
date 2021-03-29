//
//  ColoredSliderTextBox.swift
//  ColorPicker
//
//  Created by ALEKSEY SUSLOV on 30.03.2021.
//

import SwiftUI

struct ColoredSliderTextBox: View {
    let colorLine: Color
    @State private var value = 105.0
    
    var body: some View {
        VStack {
            HStack {
                Text("\(lround(value))")
                    .frame(width: 35)
                Slider(value: $value, in: 0...255, step: 1)
                    .accentColor(colorLine)
                TextField("", value: $value, formatter: NumberFormatter())
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 45)
            }.padding(.horizontal)
        }
    }
}

struct ColoredSliderTextBox_Previews: PreviewProvider {
    static var previews: some View {
        ColoredSliderTextBox(colorLine: .green)
    }
}
