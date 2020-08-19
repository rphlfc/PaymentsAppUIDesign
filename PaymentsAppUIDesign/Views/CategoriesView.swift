//
//  CategoriesView.swift
//  PaymentsAppUIDesign
//
//  Created by Raphael Cerqueira on 18/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Categories")
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                }
            }
            .padding(.top, 32)
            .padding(.horizontal, 32)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    CategoryCardView(image: "bag.fill", amount: "$149", title: "Shopping")
                    CategoryCardView(image: "heart.fill", amount: "$49", title: "Medicines")
                    CategoryCardView(image: "car.fill", amount: "$19", title: "Transport")
                    CategoryCardView(image: "bag.fill", amount: "$149", title: "Shopping")
                    CategoryCardView(image: "heart.fill", amount: "$49", title: "Medicines")
                    CategoryCardView(image: "car.fill", amount: "$19", title: "Transport")
                }
                .padding(.horizontal, 32)
            }
            
            HStack {
                Text("Recent Transactions")
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                }
                
            }
            .padding(.top)
            .padding(.horizontal, 32)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ListRowView(image: "apple", title: "Apple", value: "$99")
                    ListRowView(image: "prime", title: "Amazon Prime", value: "$12")
                    ListRowView(image: "apple", title: "Apple", value: "$99")
                    ListRowView(image: "prime", title: "Amazon Prime", value: "$12")
                }
            }
            .padding(.vertical)
            .padding(.horizontal, 32)
        }
        .background(Color(#colorLiteral(red: 0.9707756639, green: 0.9709379077, blue: 0.9707543254, alpha: 1)))
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}

struct CategoryCardView: View {
    var image: String
    var amount: String
    var title: String
    
    var body: some View {
        Button(action: {
            
        }) {
            VStack(alignment: .leading) {
                Image(systemName: image)
                    .padding(.top)
                
                Text(amount)
                    .font(.system(size: 16))
                    .padding(.top, 24)
                
                Text(title)
                    .font(.system(size: 16, weight: .bold))
            }
            .padding()
            .background(Color(#colorLiteral(red: 0.000369911897, green: 0.4427797198, blue: 0.731592834, alpha: 1)))
            .foregroundColor(.white)
            .cornerRadius(18)
        }
    }
}

struct ListRowView: View {
    var image: String
    var title: String
    var value: String
    
    var body: some View {
        VStack {
            HStack {
                Image(image)
                    .resizable()
                    .padding()
                    .background(Color.white)
                    .frame(width: 70, height: 70)
                    .cornerRadius(15)
                
                VStack(alignment: .leading) {
                    Text(title)
                        .fontWeight(.bold)
                    
                    Text("Yesterday")
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Text(value)
                    .fontWeight(.bold)
            }
            
            Divider()
        }
    }
}
