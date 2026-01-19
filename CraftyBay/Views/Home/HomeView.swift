//
//  HomeView.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 19/1/26.
//
//#07AEAF
import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    
                    AppColor.primaryColor
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)

                    HStack {
                        Image("logo_nav")
                        Spacer()
                        CircleIconBack(systemName: "person.crop.circle")
                        CircleIconBack(systemName: "phone.fill")
                        CircleIconBack(systemName: "bell.fill")
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 16)
                    .padding(.top, -geometry.safeAreaInsets.top)
                    

                    Spacer()
                }
                Spacer()
            }
        }

    }
}
#Preview {
    HomeView()
}
