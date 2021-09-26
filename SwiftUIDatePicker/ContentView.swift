//
//  ContentView.swift
//  SwiftUIDatePicker
//
//  Created by Andrey Padalka on 9/26/21.
//

import SwiftUI

struct ContentView: View {
    @State var date = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                DatePicker ("Trip Date",
                            selection: $date,
                            in: Date()...,
                            displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
            }
            .navigationTitle("Select dates")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
