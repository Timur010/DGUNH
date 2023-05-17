//
//  RequestError.swift
//  DGUNH
//
//  Created by timur on 17.05.2023.
//

import Foundation

enum RequestError: Error {
    case decode
    case invalidURL
    case noResponse
    case unauthorized
    case unexpectedStatusCode
    case unknown
    
    var message: String {
        switch self {
        case .decode:
            return "Decode error"
        case .invalidURL:
            return "invalid URL"
        case .unauthorized:
            return "Need authorization token"
        default:
            return "Unknown error"
        }
    }
}

