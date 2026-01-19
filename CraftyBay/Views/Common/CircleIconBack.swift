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
            .background(Color.gray.opacity(0.2))
            .clipShape(Circle())
    }
}

