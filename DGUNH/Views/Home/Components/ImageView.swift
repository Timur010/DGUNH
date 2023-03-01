//
//  ImageView.swift
//  DGUNH
//
//  Created by timur on 01.03.2023.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        ZStack (alignment: .leading){
            Image("Hacaton")
                .resizable()
                .aspectRatio(contentMode: .fill)
            gradient
                .background(LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(1.2)]), startPoint: .top, endPoint: .bottom))
                .offset(y: 80)
            gradient
                .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .center, endPoint: .top))
                .offset(y: -75)
            Text("Хапнули хакатон жестко")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size: 24))
                .padding(.top, 170)
                .padding(.leading, 10)
        }
        .frame(width: Constants.screen.width, height: Constants.screen.height * 0.28)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}

extension ImageView {
    private var gradient: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(height: 100)
    }
}
