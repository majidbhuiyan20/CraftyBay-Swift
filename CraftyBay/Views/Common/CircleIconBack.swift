//
//  CircleIconBack.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 19/1/26.
//

import SwiftUI

struct CircleIconBack: View {
    let systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.system(size: 22))
            .padding(10)
            .background(AppColor.primaryBackground)
            .foregroundColor(AppColor.iconColor)
            .clipShape(Circle())
    }
}

