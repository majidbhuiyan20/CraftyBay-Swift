//
//  CategoryItemView.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 19/1/26.
//

import SwiftUI

struct CategoryItemView: View {
    var iconName: String
    var title: String
    var onTap: () -> Void

    var body: some View {
        VStack(spacing: 8) {

            ZStack {
                // Background color
                AppColor.itemBackground
                    .frame(width: 70, height: 70)
                    .cornerRadius(15)

                // Icon
                Image(systemName: iconName)
                    .font(.system(size: 30))
                    .foregroundColor(AppColor.primaryColor)
            }

            // Text below ZStack
            Text(title)
                .font(.title3)
                .bold()
                .foregroundColor(AppColor.primaryColor)
        }
        .onTapGesture {
            onTap()
        }
    }
}

