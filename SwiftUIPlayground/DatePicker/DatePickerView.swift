//
//  DatePickerView.swift
//  SwiftUIPlayground
//
//  Created by Ngo Dang tan on 24/03/2021.
//

import SwiftUI

struct DatePickerView: View {
    @State var date = Date()
    var body: some View {
        NavigationView{
            VStack{
                DatePicker("Trip Date",
                           selection: $date,
                           in: Date()...,
                           displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
            }
            .navigationTitle("Select Dates")
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
