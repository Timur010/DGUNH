//
//  Post.swift
//  DGUNH
//
//  Created by timur on 17.05.2023.
//

import Foundation


struct Post: Codable {
    let count: Int
    let next, previous: String?
    let results: [Result1]
}

// MARK: - Result
struct Result1: Codable {
    let id, user: Int
    let title, body, type, createdAt: String
    let views: [Int]
    
    enum CodingKeys: String, CodingKey {
        case id, user, title, body, type
        case createdAt = "created_at"
        case views
    }
}

