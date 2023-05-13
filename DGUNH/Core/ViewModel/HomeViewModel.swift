//
//  HomeViewModel.swift
//  DGUNH
//
//  Created by timur on 13.05.2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var image: [String] = ["homeBaner", "homeBaner", "homeBaner"]
    @Published var currenTabIndex = 0
    @Published var currenCategory: CurrenCategory = .news
}
