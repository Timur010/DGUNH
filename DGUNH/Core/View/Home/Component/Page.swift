//
//  Page.swift
//  DGUNH
//
//  Created by timur on 13.05.2023.
//

import SwiftUI

struct CustomPageIndicator: View {
    @Namespace private var animation
    let numberOfPages: Int
    let currentIndex: Int
    
    private let selectedColor = Color.accent
    private let secondaryColor = Color.secondaryColor
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<numberOfPages, id: \.self) { i in
                if shouldShowIndex(i) {
                    Circle()
                        .fill(currentIndex == i ? selectedColor : secondaryColor)
                        .scaleEffect(currentIndex == i ? 1.2 : 1)
                        .frame(width: 8, height: 8)
                        .transition(AnyTransition.opacity.combined(with: .scale))
                        .id(i)
                }
            }
        }
    }
    
    private func shouldShowIndex(_ index: Int) -> Bool {
        ((currentIndex - 1)...(currentIndex + 1)).contains(index)
      }
}

struct CustomPageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        CustomPageIndicator(numberOfPages: 4, currentIndex: 0)
    }
}
