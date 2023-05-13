//
//  CardView.swift
//  DGUNH
//
//  Created by timur on 13.05.2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        HStack (spacing: 0) {
            Image("homeBaner")
                .resizable()
                .scaledToFill()
                .frame(width: 123, height: 123)
                .cornerRadius(15)
                .padding(10)
            VStack ( alignment: .leading ) {
                Text ("Вагид пришел на пару и ничего не делает")
                    .foregroundColor(.white)
                    .font(.regular_B2)
                    .padding(.top, 12)
                    .lineLimit(2)
                Spacer()
                Text ("11.09.2023")
                    .foregroundColor(.white)
                    .font(.regular(size: 15))
                    .padding(.bottom, 12)
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 32)
        .background(Color.secondaryColor.cornerRadius(23))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
