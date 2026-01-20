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
                }
            }
        }
    }
}
