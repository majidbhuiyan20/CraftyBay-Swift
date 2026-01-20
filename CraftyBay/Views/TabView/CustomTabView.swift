//
//  CustomTabView.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 20/1/26.
//

import SwiftUI

struct CustomTabView: View {

    var body: some View {
        TabView {

            // Home Tab
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            // Categories Tab
            CategoriesView()
                    .tabItem {
                        Image(systemName: "square.grid.2x2.fill")
                        Text("Categories")
                    }
            

                

            CategoriesView()
                  .tabItem {
                      Image(systemName: "cart.fill")
                      Text("Cart")
                  }

            CategoriesView()
                   .tabItem {
                       Image(systemName: "gift.fill")   // 🎁 Gift icon
                       Text("Wishlist")
                   }
        }
        .navigationBarBackButtonHidden(true)
    }
}
