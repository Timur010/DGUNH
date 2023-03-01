//
//  DGUNHApp.swift
//  DGUNH
//
//  Created by timur on 01.03.2023.
//

import SwiftUI

@main
struct DGUNHApp: App {
    @StateObject private var store = Store()
    
    var body: some Scene {
        WindowGroup {
            TabBar()
                .environmentObject(store)
        }
    }
}
