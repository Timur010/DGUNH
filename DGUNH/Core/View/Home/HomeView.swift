//
//  HomeView.swift
//  DGUNH
//
//  Created by timur on 13.05.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm = HomeViewModel()
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            NavBannerView()
                .environmentObject(vm)
            
            Banner()
                .padding(.top, 22)
            
            HStack (spacing: 24) {
                CategoryButtonView(title: "Новости", action: {
                    vm.currenCategory = .news
                }, currentCategory: vm.currenCategory, chosenCategory: .news)
                
                CategoryButtonView(title: "Объявления", action: {
                    vm.currenCategory = .advert
                }, currentCategory: vm.currenCategory, chosenCategory: .advert)
            }
            .padding(29)
            .padding(.top, 18)
            
            CardView()
            
            Spacer(minLength: 130)
        }
        .background(Color.background)
        .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
