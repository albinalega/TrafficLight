//
//  ColorCircleView.swift
//  TrafficLight
//
//  Created by Альбина Лега on 08.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    var color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .opacity(opacity)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 1)
    }
}
