//
//  Settings.swift
//  SmartGarage
//
//  Created by George Baker on 11/05/2022.
//

import SwiftUI

struct SettingsView: View {
    @State private var isAuto = false
    
    var body: some View {
        NavigationView {
                List {
                    Section(header: Text("Garage Door")) {
                        VStack {
                            Image("auto_open_v3")
                                .resizable()
                                .frame(width: 250, height: 120)
                                .padding(.bottom)
                                .padding(.top)
                            Toggle("Auto Open and Close", isOn: $isAuto)
                            
                        }
                    
                    }
                    
                    Section(header: Text("Camera")) {
                        NavigationLink(destination: Text("Some view")) {
                            HStack() {
                                Text("Record Video")
                                Spacer()
                                Text("720p at 60fps")
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.trailing)
                                    
                            }
                        }
                        NavigationLink(destination: Text("Some view")) {
                            HStack() {
                                Text("Stream Video")
                                Spacer()
                                Text("1080p at 30fps")
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.trailing)
                                    
                            }
                        }
                    }
                    
                    Section(header: Text("Connected Vehicles")) {
                        NavigationLink(destination: Text("Some view")) {
                            Text("George's Tesla Model X")
                        }
                        NavigationLink(destination: Text("Some view")) {
                            Text("Dave's Range Rover")
                        }
                    }
                    
                    Section(header: Text("Integrations")) {
                        NavigationLink(destination: Text("Some view")) {
                            Text("CarPlay")
                        }
                    }
                }
                .navigationTitle("Settings")
            }
            
        }
        
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
