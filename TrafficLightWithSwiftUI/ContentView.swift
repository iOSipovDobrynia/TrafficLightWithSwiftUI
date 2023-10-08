//
//  ContentView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Goodwasp on 06.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Private properties
    private let redLightView = ColorCircleView(color: Color.red)
    private let yellowLightView = ColorCircleView(color: Color.yellow)
    private let greenLightView = ColorCircleView(color: Color.green)
    
    @State private var countOfTap = 0
    
    var body: some View {
        VStack {
            redLightView
                .opacity(opacityForRed())
            yellowLightView
                .opacity(opacityForYellow())
            greenLightView
                .opacity(opacityForGreen())
            Spacer()
            Button(action: { countOfTap += 1 } ) {
                Text(countOfTap == 0 ? "Start" : "Next")
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .font(.title)
                    .clipShape(Capsule())
            }
        }
        .padding()
    }
    
    // MARK: - Private func
    private func opacityForRed() -> Double {
        countOfTap % 3 == 1 ? 1 : 0.3
    }
    
    private func opacityForYellow() -> Double {
        countOfTap % 3 == 2 ? 1 : 0.3
    }
    
    private func opacityForGreen() -> Double {
        (countOfTap % 3 == 0) && countOfTap != 0 ? 1 : 0.3
    }
}

#Preview {
    ContentView()
}
