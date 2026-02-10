//
//  LoginViewModel.swift
//  CraftyBay
//
//  Created by Majid on 10/2/26.
//

import Foundation
import Combine


final class LoginViewModel: ObservableObject {

    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?

    func login() {
        guard !email.isEmpty, !password.isEmpty else {
            errorMessage = "Email and password are required"
            return
        }

        isLoading = true
        errorMessage = nil

    
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.isLoading = false
            print("Login success for \(self.email)")
        }
    }
}
