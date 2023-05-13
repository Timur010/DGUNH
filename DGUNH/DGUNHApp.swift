//
//  DGUNHApp.swift
//  DGUNH
//
//  Created by timur on 12.05.2023.
//

import SwiftUI

@main
struct DGUNHApp: App {
    @StateObject var store = Store()
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(store)
        }
    }
}
