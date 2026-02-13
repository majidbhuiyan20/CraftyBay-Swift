//
//  NetworkManager.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 12/2/26.
//

import Foundation
import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let baseURL = "https://ecom-rs8e.onrender.com/api"
    
    private init() {}
    
    func request<T: Decodable>(
        _ endpoint: APIEndpoint,
        responseType: T.Type
    ) async throws -> T {
        
        guard let url = URL(string: baseURL + endpoint.path) else {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        request.httpBody = endpoint.body
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
      
        if let body = endpoint.body,
           let bodyString = String(data: body, encoding: .utf8) {
            print("➡️ [REQUEST] \(endpoint.method.rawValue) \(url.absoluteString)")
            print("Body: \(bodyString)")
        } else {
            print("➡️ [REQUEST] \(endpoint.method.rawValue) \(url.absoluteString) (No body)")
        }
        
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw APIError.invalidResponse
        }
        
        guard (200...299).contains(httpResponse.statusCode) else {
            throw APIError.serverError("Server error: \(httpResponse.statusCode)")
        }
        
        do {
            let decodedResponse = try JSONDecoder().decode(T.self, from: data)
            
           
            if let jsonString = String(data: data, encoding: .utf8) {
                print("✅ [RESPONSE] \(endpoint.method.rawValue) \(url.absoluteString)")
                print("Response Data: \(jsonString)")
            }
            
            return decodedResponse
            
        } catch {
           
            if let responseString = String(data: data, encoding: .utf8) {
                print("[DECODING ERROR] Response: \(responseString)")
            }
            throw APIError.decodingError
        }
    }
}
