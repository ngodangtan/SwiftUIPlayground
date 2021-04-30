//
//  GestureView.swift
//  SwiftUIPlayground
//
//  Created by Ngo Dang tan on 30/04/2021.
//

import SwiftUI

struct GestureView: View {
    @GestureState var isLongPressed = false
    
    @State var offset: CGSize = .zero
    
    var body: some View {
        let longPressGesture  = LongPressGesture()
            .updating($isLongPressed) { newValue, state, transaction in
                state = newValue
            }
        
        let dragGesture = DragGesture()
            .onChanged { value in
                self.offset = value.translation
            }
            .onEnded { value in
                
            }
        
        VStack {
            Circle()
                .frame(width: 150, height: 150, alignment: .center)
                .foregroundColor(isLongPressed ? Color.orange : Color.blue)
                .offset(x: offset.width, y: offset.height)
                .gesture(dragGesture)
                .animation(.default)
        }
    }
}

struct GestureView_Previews: PreviewProvider {
    static var previews: some View {
        GestureView()
    }
}
