//
//  Store.swift
//  DGUNH
//
//  Created by timur on 13.05.2023.
//

import Foundation


class Store: ObservableObject {
    @Published var currenTab: Tab = .home
}

enum Tab: String, CaseIterable {
    case chat, home, account
    
    var icon: String {
        switch self {
        case .chat:
            return "Chat"
        case .home:
            return "Home"
        case .account:
            return "Profile"
        }
    }
}
