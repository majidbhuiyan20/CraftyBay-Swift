//
//  CraftyBay.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 19/1/26.


import SwiftUI

@main
struct CraftyBayApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}
/*
 MyApp
 │
 ├── App
 │   ├── MyAppApp.swift        // App entry point
 │   ├── AppDelegate.swift
 │   ├── SceneDelegate.swift
 │   └── AppEnvironment.swift // Configs, env flags
 │
 ├── Core
 │   ├── Network
 │   │   ├── APIClient.swift
 │   │   ├── Endpoints.swift
 │   │   ├── NetworkError.swift
 │   │   └── RequestBuilder.swift
 │   │
 │   ├── Storage
 │   │   ├── KeychainManager.swift
 │   │   └── UserDefaultsManager.swift
 │   │
 │   ├── Extensions
 │   │   ├── UIView+Ext.swift
 │   │   ├── String+Ext.swift
 │   │   └── Date+Ext.swift
 │   │
 │   └── Utilities
 │       ├── Constants.swift
 │       ├── Logger.swift
 │       └── Validators.swift
 │
 ├── Features
 │   ├── Auth
 │   │   ├── Model
 │   │   │   └── LoginResponse.swift
 │   │   │
 │   │   ├── View
 │   │   │   └── LoginViewController.swift
 │   │   │
 │   │   ├── ViewModel
 │   │   │   └── LoginViewModel.swift
 │   │   │
 │   │   └── Service
 │   │       └── AuthService.swift
 │   │
 │   ├── Home
 │   │   ├── Model
 │   │   ├── View
 │   │   └── ViewModel
 │   │
 │   └── Profile
 │       ├── Model
 │       ├── View
 │       └── ViewModel
 │
 ├── Resources
 │   ├── Assets.xcassets
 │   ├── Colors.xcassets
 │   ├── Fonts
 │   ├── LaunchScreen.storyboard
 │   └── Localizable.strings
 │
 ├── SupportingFiles
 │   ├── Info.plist
 │   └── Config.plist
 │
 └── Tests
     ├── UnitTests
     └── UITests

 
 Features
 └── Auth
     ├── View
     │   ├── LoginViewController.swift
     │   ├── SignupViewController.swift
     │   └── Components
     │       ├── AuthTextField.swift
     │       ├── PasswordStrengthView.swift
     │       └── SocialLoginButton.swift
     │
     ├── ViewModel
     └── Model

 
 */
