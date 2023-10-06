//
//  ColorCircleView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Goodwasp on 06.10.2023.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(lineWidth: 2))
            .shadow(radius: 10)
    }
}

#Preview {
    ColorCircleView(color: Color.red)
}
