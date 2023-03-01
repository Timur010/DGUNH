//
//  HomeView.swift
//  DGUNH
//
//  Created by timur on 01.03.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HeaderView()
                .ignoresSafeArea()
            Spacer()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
