//
//  TabBar.swift
//  DGUNH
//
//  Created by timur on 01.03.2023.
//

import SwiftUI

struct TabBar: View {
    @EnvironmentObject private var store: Store
    
    var body: some View {
        NavigationView {
            ZStack {
                ZStack (alignment: .bottom) {
                    tabBarViews
                    iconTabBar
                }
                .navigationBarHidden(true)
                .edgesIgnoringSafeArea(.bottom)
            }
        }
        .accentColor(.yellow)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(Store())
    }
}

extension TabBar {
    private var tabBarViews: some View {
        TabView (selection: $store.currentTab) {
            HomeView()
                .tag(Tab.home)
                .navigationBarHidden(true)
            ChatView()
                .tag(Tab.chat)
                .navigationBarHidden(true)
            AccountView()
                .tag(Tab.account)
        }
    }
    
    private var iconTabBar: some View {
        VStack(spacing: 0) {
            HStack (spacing: 70) {
                ForEach(Tab.allCases, id: \.self) { tab in
                    TabIcon(tab: tab, currentTab: $store.currentTab)
                }
            }
            .padding(.top, 13)
            .padding(.bottom, 25)
        }
        .frame(width: Constants.screen.width, height: Constants.screen.height * 0.09)
        .background(Color.tabBarColor)
    }
}
