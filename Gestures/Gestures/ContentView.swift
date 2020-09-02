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
    
    var body: some View {
        CardView(darkMode: darkMode)
            .gesture(TapGesture(count: 1)
                .onEnded({ () in
                    withAnimation {
                        self.darkMode.toggle()
                    }
                })
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
