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

            // Profile Tab
            HomeView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }

            // Statistics Tab
            HomeView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Statistics")
                }

            // Settings Tab
            HomeView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
        }
        .navigationBarBackButtonHidden(true)
    }
}
