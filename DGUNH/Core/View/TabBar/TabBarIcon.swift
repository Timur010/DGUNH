//
//  TabBarIcon.swift
//  DGUNH
//
//  Created by timur on 13.05.2023.
//

import SwiftUI

struct TabBarIcon: View {
    var tab: Tab
    @Binding var currentTab: Tab
    
    var body: some View {
        VStack {
            Image(tab.icon)
                .resizable()
                .frame(width: currentTab == tab ? 40: 35, height: currentTab == tab ? 40: 35)
        }
        .frame(width: currentTab == tab ? 70: 60, height: currentTab == tab ? 70: 60)
        .background(currentTab == tab ? Color.accent: .tabBar)
        .cornerRadius(28)
        .padding(.bottom, currentTab == tab ? 5: 0 )
        .onTapGesture {
            withAnimation {
                currentTab = tab
            }
           
        }
    }
}

struct TabBarIcon_Previews: PreviewProvider {
    static var previews: some View {
        TabBarIcon(tab: .chat, currentTab: .constant(.home))
    }
}
