//
//  APIEndpoint.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 12/2/26.
//
import Foundation
struct APIEndpoint{
    let path: String
    let method: HTTPMethod
    let body: Data?
    
    init<T: Encodable>(
    path: String,
    method: HTTPMethod,
    body: T? = nil
    ){
        self.path = path
        self.method = method
        
        if let body = body{
            self.body = try? JSONEncoder().encode(body)
        }
        else{
            self.body = nil
        }
    }
}

