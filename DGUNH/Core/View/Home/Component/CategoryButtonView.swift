//
//  CategoryButtonView.swift
//  DGUNH
//
//  Created by timur on 13.05.2023.
//

import SwiftUI

struct CategoryButtonView: View {
    var title: String
    var action: () -> ()
    var currentCategory: CurrenCategory
    var chosenCategory: CurrenCategory
    var body: some View {
        Button {
            withAnimation {
                action()
            }
        } label: {
            Text(title)
                .font(.semiBold_H3)
                .foregroundColor(.white)
                .padding(.vertical, 10)
                .padding(.horizontal, 20)
                .background(currentCategory == chosenCategory ? Color.accent : Color.secondaryColor )
                .cornerRadius(28)
                
        }
    }
}

struct CategoryButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButtonView(title: "Новости", action: ({}), currentCategory: .advert, chosenCategory: .news)
    }
}
