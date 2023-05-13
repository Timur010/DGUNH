//
//  TabBarView.swift
//  DGUNH
//
//  Created by timur on 13.05.2023.
//

import SwiftUI

struct TabBarView: View {
    @EnvironmentObject private var store: Store
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                tabBarView
                tabBarIcon
            }
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.bottom)
        }
        .accentColor(.tabBar)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .environmentObject(Store())
    }
}


extension TabBarView {
    private var tabBarView: some View {
        TabView (selection: $store.currenTab){
            ChatView()
                .tag(Tab.chat)
                .navigationBarHidden(true)
            HomeView()
                .tag(Tab.home)
                .navigationBarHidden(true)
            AccountView()
                .tag(Tab.account)
                .navigationBarHidden(true)
        }
        .onAppear {
            UITabBar.appearance().barTintColor = .black
        }
    }
    private var tabBarIcon: some View {
        HStack(alignment: .center, spacing: 50) {
            ForEach(Tab.allCases, id: \.self) { tab in
                TabBarIcon(tab: tab, currentTab: $store.currenTab)
            }
            .padding(.bottom, 58)
            .padding(.top, 10)
        }
        .frame(width: UIScreen.main.bounds.width)
        .background(Color.tabBar.cornerRadius(40).shadow(radius: 1))
        .offset(y: 40)
    }
}
