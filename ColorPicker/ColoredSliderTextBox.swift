//
//  ColoredSliderTextBox.swift
//  ColorPicker
//
//  Created by ALEKSEY SUSLOV on 30.03.2021.
//

import SwiftUI

struct ColoredSliderTextBox: View {
    let colorLine: Color
    @Binding var value: Double
    @State private var alertPresented = false
    @State private var isEditing = false
    
    var body: some View {
        let someValue = Binding<String> (
            get: { "\(lround(value))" },
            set: {
                if isEditing {
                    if let value = numberFormatter.number(from: $0) {
                        self.value = value.doubleValue
                    } else {
                        alertPresented = true
                        isEditing = false
                    }
                }
            }
        )
        
        return HStack {
            Text("\(lround(value))")
                .frame(width: 35)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(colorLine)
                .shadow(color: colorLine.opacity(1 / 255 * value), radius: 2)
            TextField("", text: someValue, onCommit:  {
                self.isEditing = true
            })
            
                .disableAutocorrection(true)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 45)
                .alert(isPresented: $alertPresented) {
                    Alert(title: Text("Wrong Format"), message: Text("Number from 0 to 255 only"))
                }
        }
    }
}

extension ColoredSliderTextBox {
    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.minimum = 0.0
        formatter.maximum = 255.0
        return formatter
    }
}
