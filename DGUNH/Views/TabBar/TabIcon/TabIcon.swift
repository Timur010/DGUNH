//
//  TabIcon.swift
//  DGUNH
//
//  Created by timur on 01.03.2023.
//

import SwiftUI

struct TabIcon: View {
    let tab: Tab
    @Binding var currentTab: Tab
    
    var body: some View {
        VStack (spacing: 3) {
            Image(tab.image)
                .resizable()
                .scaledToFit()
                .frame(height: 23)
            
            Text(tab.title)
                .font(.caption)
                .fontWeight(.bold)
        }
        .foregroundColor(currentTab == tab ? Color.white : Color.gray)
        .onTapGesture {
            currentTab = tab
        }
    }
}

struct TabIcon_Previews: PreviewProvider {
    static var previews: some View {
        TabIcon(tab: .home, currentTab: .constant(.home))
    }
}
