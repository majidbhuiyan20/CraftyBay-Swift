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
                    
                    //=======================Scroll View====== Start=============================//
                    ScrollView (.vertical, showsIndicators: false){
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
                        
                    //===================================
                        
                        // Slider bellow
                    
                            CarouselSliderView(items: ["Happy New Year Special Deal Save 30%", "Eid-Ul-Fitr Special Deal 35%", "Happy New Year Special Deal Save 30%", "Happy New Year Special Deal Save 30%"])
                        //Slider End
                        
                    //====================================
                    //All Categories Section Start Here
                        SectionHeaderView(
                            title: "All Categories",
                            buttonTitle: "See All"
                        ) {
                            print("See All tapped")
                        }.padding(.bottom, 12)
                        
                    //Show Category Item
                        HStack(spacing: 16){
                            CategoryItemView(iconName: "heart.fill", title: "Beauty") {
                                //Iteam On tap Code
                            }
                            CategoryItemView(iconName: "shoeprints.fill", title: "shoes") {
                                //Iteam On tap Code
                            }
                            CategoryItemView(iconName: "tshirt.fill", title: "Shirts") {
                                //Iteam On tap Code
                            }
                            CategoryItemView(iconName: "iphone", title: "Electronics") {
                                //Iteam On tap Code
                            }

                        }.padding(.horizontal, 16)
                        
                        //All category show here==
                        //=================================================

                        SectionHeaderView(
                            title: "Popular",
                            buttonTitle: "See All"
                        ) {
                            print("See All tapped")
                        }.padding(.bottom, 12)
                            .padding(.top, 16)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {

                                ProductCardView(
                                    imageName: "shoes",
                                    title: "New Year Special Shoe",
                                    price: "$129.00",
                                    rating: "4.8",
                                    isFavorite: false
                                ) {
                                    print("Favorite tapped")
                                }

                                ProductCardView(
                                    imageName: "shoes",
                                    title: "Running Shoes",
                                    price: "$99.00",
                                    rating: "4.6",
                                    isFavorite: true
                                ) {
                                    print("Favorite tapped")
                                }

                                ProductCardView(
                                    imageName: "shoes",
                                    title: "Sports Sneakers",
                                    price: "$149.00",
                                    rating: "4.9",
                                    isFavorite: false
                                ) {
                                    print("Favorite tapped")
                                }

                                ProductCardView(
                                    imageName: "shoes",
                                    title: "Sports Sneakers",
                                    price: "$149.00",
                                    rating: "4.9",
                                    isFavorite: false
                                ) {
                                    print("Favorite tapped")
                                }
                            }
                            .padding(.horizontal, 16)
                        }


                        SectionHeaderView(
                            title: "Special",
                            buttonTitle: "See All"
                        ) {
                            print("See All tapped")
                        }.padding(.bottom, 12)
                            .padding(.top, 16)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {

                                ProductCardView(
                                    imageName: "shoes",
                                    title: "New Year Special Shoe",
                                    price: "$129.00",
                                    rating: "4.8",
                                    isFavorite: false
                                ) {
                                    print("Favorite tapped")
                                }

                                ProductCardView(
                                    imageName: "shoes",
                                    title: "Running Shoes",
                                    price: "$99.00",
                                    rating: "4.6",
                                    isFavorite: true
                                ) {
                                    print("Favorite tapped")
                                }

                                ProductCardView(
                                    imageName: "shoes",
                                    title: "Sports Sneakers",
                                    price: "$149.00",
                                    rating: "4.9",
                                    isFavorite: false
                                ) {
                                    print("Favorite tapped")
                                }

                                ProductCardView(
                                    imageName: "shoes",
                                    title: "Sports Sneakers",
                                    price: "$149.00",
                                    rating: "4.9",
                                    isFavorite: false
                                ) {
                                    print("Favorite tapped")
                                }
                            }
                            .padding(.horizontal, 16)
                        }


                        
                            
                           
     }
                    Spacer()
                    }
                   
            }
        }

    }
}
#Preview {
    HomeView()
}
