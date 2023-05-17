//
//  Service.swift
//  DGUNH
//
//  Created by timur on 17.05.2023.
//

import Foundation

protocol PostServiceProtocol {
    func getPost() async -> Result<Post, RequestError>
}

class PostService: BaseRequest, PostServiceProtocol {
    
    static let postService = PostService()
    
    func getPost() async -> Result<Post, RequestError> {
        return await sendRequest(endpoint: PostServiceEndpoint.getPost, responseModel: Post.self)
    }
}
