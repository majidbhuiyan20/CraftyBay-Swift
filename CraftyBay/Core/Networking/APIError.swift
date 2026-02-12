//
//  APIError.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 12/2/26.
//
import Foundation
enum APIError: Error, LocalizedError{
    case invalidURL
    case invalidResponse
    case decodingError
    case serverError(String)
    
    var errorDescription: String?{
        switch self{
        case .invalidURL:
            return "Invalid URL"
        case .invalidResponse:
            return "Invalid server response"
        case .decodingError:
            return "Faield to decode response"
        case .serverError(let message):
            return message
        }
    }
}
