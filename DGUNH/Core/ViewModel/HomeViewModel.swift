//
//  HomeViewModel.swift
//  DGUNH
//
//  Created by timur on 13.05.2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    let postService: PostServiceProtocol
    
    
    init(postService: PostServiceProtocol) {
        self.postService = postService
        Task {
            await getPost()
        }
    }
    
    @Published var image: [String] = ["homeBaner", "homeBaner", "homeBaner"]
    @Published var currenTabIndex = 0
    @Published var currenCategory: CurrenCategory = .news
    
    @MainActor func getPost() async {
        let result = await postService.getPost()
        switch result {
        case .success(let success):
            print(success.count)
        case .failure(let failure):
            print(failure)
        }
    }
}
