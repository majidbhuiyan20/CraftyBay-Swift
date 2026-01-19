//
//  SectionHeaderView.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 19/1/26.
//

import SwiftUI

struct SectionHeaderView: View {
    var title: String
    var buttonTitle: String
    var onTap: () -> Void

    var body: some View {
        HStack {
            Text(title)
                .font(.title3)
                .bold()

            Spacer()

            Button(action: {
                onTap()
            }) {
                Text(buttonTitle)
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.blue)
            }
        }
        .padding(.horizontal, 16)
    }
}
