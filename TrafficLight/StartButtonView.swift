//
//  StartButtonView.swift
//  TrafficLight
//
//  Created by Альбина Лега on 08.12.2022.
//

import SwiftUI

struct StartButtonView: View {

    var body: some View {
        Button(action: {}) {
            Text("START")
                .font(.largeTitle)
                .fontWeight(.bold)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 4))
        }
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
    }
}
