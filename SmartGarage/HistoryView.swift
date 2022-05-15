//
//  History.swift
//  SmartGarage
//
//  Created by George Baker on 11/05/2022.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Text("Some View")) {
                    VStack(alignment: .leading) {
                        Text("Highlights")
                        Text("8th May 2022")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                    }
                }
                
                NavigationLink(destination: Text("Some view")) {
                    VStack(alignment: .leading) {
                        Text("Garage Door Opened")
                        Text("8th May 2022")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                    }
                }
                
                NavigationLink(destination: Text("Some view")) {
                    VStack(alignment: .leading) {
                        Text("Highlights")
                        Text("2nd May 2022")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                    }
                }
                
                NavigationLink(destination: Text("Some view")) {
                    VStack(alignment: .leading) {
                        Text("Highlights")
                        Text("25th April 2022")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                    }
                }
            }
            
            .navigationTitle("History")
        }
        
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
