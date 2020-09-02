//
//  CardView.swift
//  Gestures
//
//  Created by Sai Raghu Varma Kallepalli on 2/9/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var darkMode: Bool = false
    
    var body: some View {
        VStack {
            Text("Card")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(darkMode ? .white : .black)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 200)
        .background(darkMode ? Color.black : Color.orange)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
