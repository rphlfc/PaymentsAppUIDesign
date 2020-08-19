//
//  MenuView.swift
//  PaymentsAppUIDesign
//
//  Created by Raphael Cerqueira on 18/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    @Binding var selectedIndex: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 30) {
                Button(action: {
                    self.selectedIndex = 0
                }) {
                    Text("Recent")
                        .fontWeight(self.selectedIndex == 0 ? .bold : .regular)
                        .foregroundColor(self.selectedIndex == 0 ? .black : .gray)
                }
                
                Button(action: {
                    self.selectedIndex = 1
                }) {
                    Text("Income")
                    .fontWeight(self.selectedIndex == 1 ? .bold : .regular)
                    .foregroundColor(self.selectedIndex == 1 ? .black : .gray)
                }
                
                Button(action: {
                    self.selectedIndex = 2
                }) {
                    Text("Analytics")
                    .fontWeight(self.selectedIndex == 2 ? .bold : .regular)
                    .foregroundColor(self.selectedIndex == 2 ? .black : .gray)
                }
            }
            
            Capsule()
                .frame(width: 20, height: 5)
                .foregroundColor(Color(#colorLiteral(red: 0.05709715933, green: 0.4283790588, blue: 0.6616889834, alpha: 1)))
                .offset(x: self.selectedIndex == 0 ? 15 : self.selectedIndex == 1 ? 105 : 195)
                .padding(.top, -6)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(selectedIndex: .constant(0))
    }
}
