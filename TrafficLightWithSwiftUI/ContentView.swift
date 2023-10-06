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
        if countOfTap % 3 == 1 {
            return 1
        }
        return 0.3
    }
    
    private func opacityForYellow() -> Double {
        if countOfTap % 3 == 2 {
            return 1
        }
        return 0.3
    }
    
    private func opacityForGreen() -> Double {
        if countOfTap == 0 {
            return 0.3
        }
        
        if countOfTap % 3 == 0 {
            return 1
        }
        
        return 0.3
    }
}

#Preview {
    ContentView()
}
