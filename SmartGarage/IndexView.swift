//
//  ContentView.swift
//  SmartGarage
//
//  Created by George Baker on 11/05/2022.
//

import SwiftUI

struct IndexView: View {
    @State private var lightOn = false
    @State private var feedbackOn = true
    @State private var sliderVal = 60.0
    @State private var sliderVal2 = 90.0
    
    var body: some View {
        NavigationView {
            List {
                VStack {
                    HStack {
                        Spacer()
                        Image("garage_icon")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .padding(.top)
                            .padding(.bottom)
                        Spacer()
                    }
                    
                    Text("Closed \(Image(systemName: "lock.fill"))")
                        .foregroundColor(.orange)
                        .font(.footnote)
                        .bold()
                    
                    Button { } label: {
                        Text("Open")
                            .bold()
//                            .font(.title)
                            .frame(maxWidth: .infinity)
                    }
                        .buttonStyle(.borderedProminent)
//                        .cornerRadius(20)
                        .padding(.bottom)
                        
                        
                    
                }
                
                Section {
                    VStack {
                        Toggle("\(Image(systemName: "lightbulb"))  Light", isOn: $lightOn)
                        Slider(value: $sliderVal, in: 0...100)
                    }
                    VStack {
                        Toggle("\(Image(systemName: "speaker.wave.3.fill"))  Feedback", isOn: $feedbackOn)
                        Slider(value: $sliderVal2, in: 0...100)
                    }
                }
            }
            .navigationTitle("Smart Garage")
        }
    }
}

struct IndexView_Previews: PreviewProvider {
    static var previews: some View {
        IndexView()
    }
}
