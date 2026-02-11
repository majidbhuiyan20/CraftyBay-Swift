//
//  ProductCardView.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 20/1/26.
//

import SwiftUI

struct ProductCardView: View {

    // MARK: - Properties
    let imageName: String
    let title: String
    let price: String
    let rating: String
    let isFavorite: Bool
    let onFavoriteTap: () -> Void

    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {

            // MARK: - Image Section
            ZStack {
                AppColor.productBackground

                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .padding(16)
            }
            .frame(height: 120)

            // MARK: - Content Section
            VStack(alignment: .leading, spacing: 8) {

                // Product Title
                Text(title)
                    .font(.system(size: 14))
                    .lineLimit(1)

                HStack {
                    //Product Price
                    Text(price)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(AppColor.primaryColor)

                    // Rating
                    HStack(spacing: 4) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.caption)
                        // Rating Text Here
                        Text(rating)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }

                    Spacer()

                    // Favorite Icon
                    Button(action: {
                        onFavoriteTap()
                    }) {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(AppColor.primaryColor)
                    }
                }
            }
            .padding(12)
            .background(Color.white)
        }
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 4)
        .frame(width: 160)
    }
}
