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
                            .padding(.horizontal, 16)
                            .padding(.vertical, 16)
                            .padding(.top, -geometry.safeAreaInsets.top)
                            .background(Color.white)
                            .shadow(color: .black.opacity(0.05),
                                    radius: 4,
                                    x: 0,
                                    y: 2)



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
