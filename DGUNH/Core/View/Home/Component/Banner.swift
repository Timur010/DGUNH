//
//  banner.swift
//  DGUNH
//
//  Created by timur on 13.05.2023.
//

import SwiftUI

struct Banner: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text("Дорогие студенты!")
                .font(.semiBold_H2)
                .foregroundColor(.accent)
                .padding(.vertical, 20)
                .padding(.leading)
            Text("С 10 по 20 октября учеба будет проходить дистанционно!")
                .font(.regular_B1)
                .foregroundColor(.white)
                .padding()
                .lineLimit(2)
        }
        .frame(width: UIScreen.main.bounds.width - 32)
        .background(Color.accent.opacity(0.17))
        .cornerRadius(28)
    }
}

struct banner_Previews: PreviewProvider {
    static var previews: some View {
        Banner()
    }
}
