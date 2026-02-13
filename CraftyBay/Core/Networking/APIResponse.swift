//
//  APIResponse.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 12/2/26.
//


struct APIResponse<T: Codable>: Codable {
    let code: Int
    let status: String
    let msg: String
    let data: T?
}
