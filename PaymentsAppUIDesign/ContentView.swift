//
//  ContentView.swift
//  PaymentsAppUIDesign
//
//  Created by Raphael Cerqueira on 18/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9567790627, green: 0.9569163918, blue: 0.956749022, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack {
                    NavigationView()
                        .padding(.top)
                    
                    CardView()
                        .padding(.top)
                    
                    MenuView(selectedIndex: self.$selectedIndex)
                        .padding(.top)
                }
                .padding(.horizontal, 32)
                
                CategoriesView()
                    .padding(.top)
                    .cornerRadius(50)
                
            }
            .background(Color(#colorLiteral(red: 0.9567790627, green: 0.9569163918, blue: 0.956749022, alpha: 1)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedIndex: 0)
    }
}
