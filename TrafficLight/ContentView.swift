//
//  ContentView.swift
//  TrafficLight
//
//  Created by Альбина Лега on 08.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonTitle = "START"
    
    @State private var redLight = ColorCircleView(color: .red, opacity: 0.3)
    @State private var yellowLight = ColorCircleView(color: .yellow, opacity: 0.3)
    @State private var greenLight = ColorCircleView(color: .green, opacity: 0.3)
    
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                redLight
                    .padding(.bottom, 16)
                yellowLight
                    .padding(.bottom,16)
                greenLight
                Spacer()
                Button(action: startButtonDidTapped) {
                    Text(buttonTitle)
                        .frame(width: 150, height: 55)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .overlay(Capsule().stroke(Color.white, lineWidth: 4))
                }
            }
            .padding()
        }
    }
    
    private enum CurrentLight {
        case red, yellow, green
    }
    
    private func startButtonDidTapped() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        
        switch currentLight {
        case .red:
            greenLight.opacity = 0.3
            redLight.opacity = 1
            currentLight = .yellow
        case .yellow:
            redLight.opacity = 0.3
            yellowLight.opacity = 1
            currentLight = .green
        case .green:
            greenLight.opacity = 1
            yellowLight.opacity = 0.3
            currentLight = .red
        }
    }
}

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
