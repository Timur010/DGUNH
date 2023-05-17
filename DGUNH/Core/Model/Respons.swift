//
//  Respons.swift
//  DGUNH
//
//  Created by timur on 17.05.2023.
//

import Foundation

struct Response<T: Codable>: Codable {
    let data: T?
    let status: Bool?
    let items: T?
}
