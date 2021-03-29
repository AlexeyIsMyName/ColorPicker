//
//  ContentView.swift
//  ColorPicker
//
//  Created by ALEKSEY SUSLOV on 30.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            ColoredSliderTextBox(colorLine: .red)
            ColoredSliderTextBox(colorLine: .green)
            ColoredSliderTextBox(colorLine: .blue)
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
