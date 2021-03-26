//
//  AlertsView.swift
//  SwiftUIPlayground
//
//  Created by Ngo Dang tan on 26/03/2021.
//

import SwiftUI

struct AlertsView: View {
    @State private var alertIsPresented = false
    @State private var backgroundUpdate = false
    var body: some View {
        NavigationView {
            
            ZStack {
                if backgroundUpdate {
                    Color.red
                }else {
                    Color.blue
                }
                VStack {
                    Button(action: {
                        self.alertIsPresented = true
                    }, label: {
                        Text("Tap Me!")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 24))
                    })
                    .frame(width: 200, height: 50, alignment: .center)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
                    .alert(isPresented: $alertIsPresented, content: {
    //                    Alert(title: Text("Purchase Successful"),
    //                          message: Text("Your in app purchase went through!"), dismissButton: .default(Text("Got It!")))
                        
                        Alert(title: Text("Would you like purchase"), primaryButton: .default(Text("Purchase"), action: {
                            self.backgroundUpdate.toggle()
                            
                        }), secondaryButton: .cancel(Text("No , Thanks")))
                        
                    })
                }
            }
            .navigationTitle("SwiftUI Alerts")
        }
    }
}

struct AlertsView_Previews: PreviewProvider {
    static var previews: some View {
        AlertsView()
    }
}
