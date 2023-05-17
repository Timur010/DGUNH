//
//  PostService.swift
//  DGUNH
//
//  Created by timur on 17.05.2023.
//

import Foundation

enum PostServiceEndpoint: Endpoint {
    case getPost
    
    var path: String {
        return API.getPost
    }
    
    var method: RequestMethod {
        return .get
    }
    
    var parameters: [String : Any]? {
        return nil
    }
    
    var header: [String : String]? {
        return  ["Authorization" : "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0Mzk4ODAzLCJpYXQiOjE2ODQzMTI0MDMsImp0aSI6IjE2MzQ4NGJhMWRiNDQyYzQ4YjRkYTliYTBjMDdmNGE0IiwidXNlcl9pZCI6MX0.c_B7p3DGQiN8iNEHdbk0Ad0FxeXK9eO2gWr4vZ8_I5I"]
    }
}
