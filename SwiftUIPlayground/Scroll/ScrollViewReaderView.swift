//
//  ScrollViewReaderView.swift
//  SwiftUIPlayground
//
//  Created by Ngo Dang tan on 30/04/2021.
//

import SwiftUI

struct ScrollViewReaderView: View {
    var body: some View {
        NavigationView {
            ScrollViewReader {proxy in
                ScrollView {
                    VStack(alignment: .leading) {
                        Button(action: {
                            withAnimation {
                                proxy.scrollTo(999, anchor: .center)
                            }
                        }, label: {
                            Text("Scroll To Bottom")
                        })
                        
                        ForEach(0...1000, id: \.self) { num in
                            HStack {
                                Label(
                                    title: { Text("Position: \(num)") },
                                    icon: { Image(systemName: "house") }
                                )
                                Spacer()
                            }
                            .id(num)
                            .padding()
                        }
                    }
                }
            }
            .navigationTitle("Scroll View")
        }
    }
}


