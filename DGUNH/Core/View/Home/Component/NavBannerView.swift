//
//  BannerView.swift
//  DGUNH
//
//  Created by timur on 13.05.2023.
//

import SwiftUI

struct NavBannerView: View {
    @EnvironmentObject var vm: HomeViewModel
    var body: some View {
        VStack (spacing: 0) {
            TabView (selection: $vm.currenTabIndex.animation()) {
                ForEach(0..<vm.image.count, id: \.self) { image in
                    ZStack (alignment: .bottom) {
                        HStack {
                            
                        }
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.1)
                        .background(
                            LinearGradient(colors: [.white, .black.opacity(0)], startPoint: .top, endPoint: .center)
                        )
                        .zIndex(1)
                        Image(vm.image[image])
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.1)
                            .tag(image)
                            .padding(.top, 30)
                        Text("Тимур дал угла на акушинке")
                            .frame(width: UIScreen.main.bounds.width, height: 100, alignment: .trailing)
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing, 17)
                            .foregroundColor(Color.white)
                            .font(.semiBold_H1)
                            .background(
                                LinearGradient(colors: [.white.opacity(0), .black], startPoint: .top, endPoint: .bottom)
                            )
                    }
                    .cornerRadius(48)
                    .offset(y: -30)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.1)
            
            
            CustomPageIndicator(numberOfPages: vm.image.count, currentIndex: vm.currenTabIndex)
        }
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        NavBannerView()
            .environmentObject(HomeViewModel())
    }
}
