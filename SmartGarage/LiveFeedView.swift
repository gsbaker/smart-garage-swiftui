//
//  LiveFeed.swift
//  SmartGarage
//
//  Created by George Baker on 11/05/2022.
//

import SwiftUI

struct LiveFeedView: View {
    var body: some View {
        NavigationView {
            List {
                VStack {
                    Image("street")
                        .resizable()
                        .cornerRadius(20)
                        .padding(.vertical)
                        .frame(width: 300, height: 230)
                        
                    VStack(spacing: 10) {
                        Button("Screenshot") {}
                        Button("Record") {}
                    }
                    
                }
                Section(header: Text("Broadcast")) {
                    HStack {
                        Label("", systemImage: "waveform")
                            .font(.title)
                        .foregroundColor(.red)
                        Text("Hold to talk")
                            .foregroundColor(.gray)
                            .bold()
                    }
                }
            }
            
            .navigationTitle("Live Feed")
        }
    }
}

struct LiveFeed_Previews: PreviewProvider {
    static var previews: some View {
        LiveFeedView()
    }
}
