//
//  HeaderView.swift
//  DGUNH
//
//  Created by timur on 01.03.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack  {
            Text("Новости")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top)
                .padding(.bottom, 10)
        }
        .frame(width: Constants.screen.width)
        .background(Color.tabBarColor.ignoresSafeArea())
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
