//
//  ScheduleView.swift
//  SmartGarage
//
//  Created by George Baker on 11/05/2022.
//

import SwiftUI

struct ScheduleView: View {
    @State private var schedule1 = true
    @State private var schedule2 = true
    @State private var schedule3 = false

    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    VStack(alignment: .leading) {
                        Toggle("Close Garage", isOn: $schedule1)
                        Text("22:00 Everyday")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                    }
                    VStack(alignment: .leading) {
                        Toggle("Open Garage", isOn: $schedule2)
                        Text("08:00 Every Weekday")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                    }
                    VStack(alignment: .leading) {
                        Toggle("Open Garage", isOn: $schedule3)
                        Text("09:00 Every Saturday")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                    }
                }
            }
            .navigationTitle("Schedules")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {}
                label: {
                    Label("Add", systemImage: "plus")
                }
                }
            }

        }
        
        
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
