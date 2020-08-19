//
//  NavigationView.swift
//  PaymentsAppUIDesign
//
//  Created by Raphael Cerqueira on 18/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        HStack(spacing: 30) {
            Text("My Cards")
                .font(.system(size: 28))
                .fontWeight(.bold)
            
            Spacer()
            
            ZStack(alignment: .top) {
                Button(action: {
                    
                }) {
                    Image(systemName: "bell")
                        .foregroundColor(.black)
                }
                
                Circle()
                    .frame(width: 5, height: 5)
                    .foregroundColor(Color.red)
                    .offset(x: 5)
            }
            
            Button(action: {
                
            }) {
                Image(systemName: "tray")
                    .foregroundColor(.black)
            }
            
            Button(action: {
                
            }) {
                Image(systemName: "circle.grid.2x2.fill")
                    .foregroundColor(.black)
            }
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
