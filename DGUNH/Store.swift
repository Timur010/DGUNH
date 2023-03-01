//
//  Store.swift
//  DGUNH
//
//  Created by timur on 01.03.2023.
//

import Foundation

class Store: ObservableObject {
    @Published var currentTab: Tab  = .home
}

enum Tab: String, CaseIterable {
    case home, chat, account
    
    var title: String {
        switch self {
        case.home:
            return NSLocalizedString("Home", comment: "TabBar icon")
        case.chat:
            return NSLocalizedString("Chat", comment: "TabBar icon")
        case .account:
            return NSLocalizedString("Account", comment: "TabBar icon")
        }
    }
    
    var image: String {
        switch self{
        case.home:
            return "Home"
        case.chat:
            return "Chat"
        case.account:
            return "Account"
        }
    }
}
