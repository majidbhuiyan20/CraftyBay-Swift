//
//  CustomTabView.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 20/1/26.
//

import SwiftUI
struct CustomTabView: View {

    @State private var selectedTab: AppTab = .home

    var body: some View {
        TabView(selection: $selectedTab) {

            // Home Tab
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(AppTab.home)

            // Categories Tab
            CategoriesView()
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Categories")
                }
                .tag(AppTab.categories)

            // Cart Tab
            CategoriesView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }
                .tag(AppTab.cart)

            // Wishlist Tab
            CategoriesView()
                .tabItem {
                    Image(systemName: "gift.fill")
                    Text("Wishlist")
                }
                .tag(AppTab.wishlist)
        }
    }
}
