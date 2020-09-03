//
//  ContentView.swift
//  Gestures
//
//  Created by Sai Raghu Varma Kallepalli on 2/9/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var darkMode: Bool = false
    @State private var cardDragState = CGSize.zero
    @State private var angle: Double = 0
    
    var body: some View {
        CardView(darkMode: darkMode)
            .animation(.spring())
            .offset(y: self.cardDragState.height)
            .gesture(DragGesture()
                            .onChanged({ value in
                                self.cardDragState = value.translation
                            })
                            .onEnded({ (value) in
                                self.cardDragState = CGSize.zero
                            })
                        )
            
            .gesture(TapGesture(count: 1)
                .onEnded({ () in
                    withAnimation(.easeInOut(duration: 0.5)) {
                        self.darkMode.toggle()
                    }
                })
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().previewLayout(.sizeThatFits)
        }
    }
}
