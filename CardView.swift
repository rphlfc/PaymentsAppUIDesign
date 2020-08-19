//
//  CardView.swift
//  PaymentsAppUIDesign
//
//  Created by Raphael Cerqueira on 18/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Balance")
                            .fontWeight(.regular)
                        
                        Text("$ 14,278")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                    }
                    
                    Spacer()
                    
                    Image("visa")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                }
                
                Text("Dwayne Johnson")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .padding(.top, 48)
                
                Text("**** **** **** 2789")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .padding(.top, 8)
            }
            .padding(32)
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.002066481858, green: 0.4473262429, blue: 0.7189700007, alpha: 1)), Color(#colorLiteral(red: 0.07725266367, green: 0.5579180121, blue: 0.859126389, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            
            VStack(spacing: 10) {
                ForEach(0 ..< 5) { item in
                    HStack(spacing: 10) {
                        Text("3")
                        Text("0")
                        Text("2")
                        Text("1")
                        Text("7")
                        Text("9")
                        Text("3")
                        Text("0")
                        Text("2")
                        Text("3")
                    }
                }
            }
            .font(.system(size: 12))
            .foregroundColor(Color.white.opacity(0.4))
            .rotationEffect(Angle.init(degrees: -45))
            .offset(x: 50, y: 30)
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
