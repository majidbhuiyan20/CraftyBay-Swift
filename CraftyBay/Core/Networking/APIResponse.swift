//
//  APIResponse.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 12/2/26.
//


struct APIResponse<T: Codable>: Codable {
    let success: Bool
    let message: String?
    let data: T?
}

