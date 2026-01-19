//
//  SplashScreen.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 19/1/26.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    SplashView()
}
















// Basic Folder Structure of Swift
/*
EcommerceApp
│
├── App
│   ├── CraftyBay.swift
│
├── Core
│   ├── Network
│   │   ├── APIService.swift
│   │   ├── APIEndpoints.swift
│   │   └── NetworkError.swift
│   │
│   ├── Utils
│   │   ├── Constants.swift
│   │   ├── Extensions.swift
│   │   └── Helpers.swift
│   │
│   └── Storage
│       ├── UserDefaultsManager.swift
│       └── KeychainManager.swift
│
├── Models
│   ├── Product.swift
│   ├── Category.swift
│   ├── CartItem.swift
│   └── User.swift
│
├── ViewModels
│   ├── HomeViewModel.swift
│   ├── ProductViewModel.swift
│   ├── CartViewModel.swift
│   └── AuthViewModel.swift
│
├── Views
│   ├── Common
│   │   ├── PrimaryButton.swift
│   │   ├── LoadingView.swift
│   │   └── ErrorView.swift
│   │
│   ├── Home
│   │   ├── HomeView.swift
│   │   └── ProductCardView.swift
│   │
│   ├── Product
│   │   ├── ProductListView.swift
│   │   └── ProductDetailsView.swift
│   │
│   ├── Cart
│   │   └── CartView.swift
│   │
│   └── Auth
│       ├── LoginView.swift
│       └── SignupView.swift
│
├── Resources
│   ├── Assets.xcassets
│   ├── Colors.xcassets
│   └── Fonts
│
├── Preview Content
│
└── Supporting Files
    └── Info.plist


 */
