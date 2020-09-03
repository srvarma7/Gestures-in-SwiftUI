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
    @State private var scaleSize: CGFloat = 1
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("sai")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
            Text("Card")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(darkMode ? .white : Color.black)
                .padding(.bottom, 1)
            
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 200)
        .background(darkMode ? Color.gray : Color.orange)
        .cornerRadius(15)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
