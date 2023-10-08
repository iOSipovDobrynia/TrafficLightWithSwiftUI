//
//  ButtonView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Goodwasp on 08.10.2023.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(title)
                .padding()
                .background(.blue)
                .foregroundStyle(.white)
                .font(.title)
                .clipShape(Capsule())
        }
    }
}

#Preview {
    ButtonView(title: "Start") {
        print("did tapped")
    }
}
