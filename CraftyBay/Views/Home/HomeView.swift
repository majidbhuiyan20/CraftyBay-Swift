//
//  HomeView.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 19/1/26.
//
//#07AEAF
import SwiftUI

struct HomeView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    //Top bar color
                    AppColor.primaryColor
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    // AppBar start here
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
                    
                    // AppBar Ends Here
                    
                    //====================================================//
                    
                    //Search Bar Add Here
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(AppColor.iconColor)

                            TextField("Search", text: $searchText)
                                .foregroundColor(.black)
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                        .background(AppColor.primaryBackground)
                        .cornerRadius(12)
                        .padding(.horizontal, 16)
                        .padding(.bottom)
                      
                    
                    // Search Bar Ends Here
                    // Content Scroll
                
                                  CarouselSliderView(items: ["Happy New Year Special Deal Save 30%", "Eid-Ul-Fitr Special Deal 35%", "Happy New Year Special Deal Save 30%", "Happy New Year Special Deal Save 30%"])
                        
                       
 }
                Spacer()
            }
        }

    }
}
#Preview {
    HomeView()
}
