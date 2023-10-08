//
//  ContentView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Goodwasp on 06.10.2023.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    // MARK: - Private properties
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    @State private var countOfTap = 0
    
    var body: some View {
        VStack {
            ColorCircleView(color: Color.red, opacity: redOpacity)
            ColorCircleView(color: Color.yellow, opacity: yellowOpacity)
            ColorCircleView(color: Color.green, opacity: greenOpacity)
            Spacer()
            ButtonView(title: countOfTap == 0 ? "Start" : "Next") {
                countOfTap += 1
                nextColor()
            }
        }
        .padding()
    }
    
    // MARK: - Private func
    private func nextColor() {
        let lightIsOff = 0.3
        let lightIsOn = 1.0
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenOpacity = lightIsOff
            redOpacity = lightIsOn
        case .yellow:
            currentLight = .green
            redOpacity = lightIsOff
            yellowOpacity = lightIsOn
        case .green:
            currentLight = .red
            yellowOpacity = lightIsOff
            greenOpacity = lightIsOn
            
        }
    }
}

#Preview {
    ContentView()
}
