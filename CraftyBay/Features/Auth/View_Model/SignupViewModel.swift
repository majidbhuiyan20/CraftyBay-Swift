//
//  SignupViewModel.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 11/2/26.
//

import Foundation
import Combine

final class SignupViewModel: ObservableObject{
    
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var phone: String = ""
    @Published var city: String = ""
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    func signUp(){
        guard validate()
        else{
            return
        }
        isLoading = true
        errorMessage = nil
        
        DispatchQueue.main.asyncAfter(deadline: .now()+1.5){
            self.isLoading = false
            print("Signup success for\(self.email)")
        }
        
    }
    
    private func validate()->Bool{
        
        guard !firstName.isEmpty else{
            errorMessage = "First Name is required"
            return false
        }
        guard !lastName.isEmpty else{
            errorMessage = "Last Name is required"
            return false
        }
        guard !phone.isEmpty else{
            errorMessage = "Phone Number is required"
            return false
        }
        guard email.contains("@") else{
            errorMessage = "Enter a valid email"
            return false
        }
        
        guard password.count >= 6 else{
            errorMessage = "Password must be a least 6 character"
            return false
        }
        guard !city.isEmpty else{
            errorMessage = "Address is required"
            return false
        }
        return true
    }
}
