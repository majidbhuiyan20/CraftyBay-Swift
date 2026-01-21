//
//  CategoriesView.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 20/1/26.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        
        VStack(spacing: 0){
            GeometryReader{
                geometry in VStack(spacing:0){
                    AppColor.primaryColor
                        .frame(height:geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    
                    VStack{
                        // App Bar
                                        HStack {
                                            Button(action: {
                                                // back action
                                            }) {
                                               
                                            }

                                            Spacer()

                                            Text("Categories")
                                                .font(.headline)
                                                .foregroundColor(.black)

                                            Spacer()

                                            // Placeholder to keep title centered
                                            Image(systemName: "chevron.left")
                                                .opacity(0)
                                        }
                                        .frame(height: 60) // FIXED HEIGHT
                                        .padding(.horizontal, 16)
                                        .padding(.top, -geometry.safeAreaInsets.top)
                                        .background(Color.white)
                        

                         
                        let columns = [
                            GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible())
                        ]

                        ScrollView {
                            LazyVGrid(columns: columns, spacing: 12) {
                                CategoryItemView(iconName: "heart.fill", title: "Beauty") {
                                    // Item On tap Code
                                }
                                CategoryItemView(iconName: "shoeprints.fill", title: "Shoes") {
                                    // Item On tap Code
                                }
                                CategoryItemView(iconName: "tshirt.fill", title: "Shirts") {
                                    // Item On tap Code
                                }
                                CategoryItemView(iconName: "iphone", title: "Electronics") {
                                    // Item On tap Code
                                }

                                CategoryItemView(iconName: "bed.double.fill", title: "Home") {
                                    // Item On tap Code
                                }
                                CategoryItemView(iconName: "leaf.fill", title: "Grocery") {
                                    // Item On tap Code
                                }
                                CategoryItemView(iconName: "gamecontroller.fill", title: "Gaming") {
                                    // Item On tap Code
                                }
                                CategoryItemView(iconName: "bag.fill", title: "Fashion") {
                                    // Item On tap Code
                                }

                                CategoryItemView(iconName: "book.fill", title: "Books") {
                                    // Item On tap Code
                                }
                                CategoryItemView(iconName: "sportscourt.fill", title: "Sports") {
                                    // Item On tap Code
                                }
                                CategoryItemView(iconName: "pills.fill", title: "Health") {
                                    // Item On tap Code
                                }
                                CategoryItemView(iconName: "car.fill", title: "Automobile") {
                                    // Item On tap Code
                                }

                                CategoryItemView(iconName: "gift.fill", title: "Gifts") {
                                    // Item On tap Code
                                }
                                CategoryItemView(iconName: "tortoise.fill", title: "Pets") {
                                    // Item On tap Code
                                }
                                CategoryItemView(iconName: "globe.americas.fill", title: "Travel") {
                                    // Item On tap Code
                                }
                                CategoryItemView(iconName: "camera.fill", title: "Cameras") {
                                    // Item On tap Code
                                }
                            }
                           
                            
                        }



                        


                            // Screen Content
                            Spacer()
                    }
                }
            }
        }
    }
}


#Preview {
    CategoriesView()
}
