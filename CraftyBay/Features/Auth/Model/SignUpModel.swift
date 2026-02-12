//
//  SignUpModel.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 12/2/26.
//

struct SignupRequest: Codable {
    let first_name: String
    let last_name: String
    let email: String
    let password: String
    let phone: String
    let city: String
}
