//
//  SignupViewModel.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 11/2/26.
//


import Foundation
import Combine
@MainActor
final class SignupViewModel: ObservableObject {


    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var phone = ""
    @Published var city = ""

    @Published var isLoading = false
    @Published var errorMessage: String?
    
  
    func signUp() async -> Bool {
        
        guard validate() else { return false }
        
        isLoading = true
        errorMessage = nil
        
    
        let requestModel = SignupRequest(
            first_name: firstName,
            last_name: lastName,
            email: email,
            password: password,
            phone: phone,
            city: city
        )
        
        let endpoint = APIEndpoint(
            path: "/auth/signup",
            method: .POST,
            body: requestModel
        )
        
        do {
        
            _ = try await NetworkManager.shared.request(
                endpoint,
                responseType: EmptyResponse.self
            )
            
            isLoading = false
            return true
            
        } catch {
            isLoading = false
            errorMessage = error.localizedDescription
            return false
        }
    }
    
    private func validate() -> Bool {
        if firstName.isEmpty { errorMessage = "First Name is required"; return false }
        if lastName.isEmpty { errorMessage = "Last Name is required"; return false }
        if phone.isEmpty { errorMessage = "Phone Number is required"; return false }
        if !email.contains("@") { errorMessage = "Enter a valid email"; return false }
        if password.count < 6 { errorMessage = "Password must be at least 6 characters"; return false }
        if city.isEmpty { errorMessage = "City is required"; return false }
        return true
    }
}


struct EmptyResponse: Codable {}
