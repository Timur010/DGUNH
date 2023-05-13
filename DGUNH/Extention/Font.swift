//
//  Font.swift
//  DGUNH
//
//  Created by timur on 13.05.2023.
//

import SwiftUI

extension Font {
    static func semiBild(size: CGFloat) -> Font {
        Font.custom("Inter-SemiBold", size: size)
    }
    
    static var semiBold_H1: Font {
        Font.custom("Inter-SemiBold", size: 31)
    }
    
    static var semiBold_H2: Font {
        Font.custom("Inter-SemiBold", size: 27)
    }
    
    static var semiBold_H3: Font {
        Font.custom("Inter-SemiBold", size: 20)
    }
    
    static func regular(size: CGFloat) -> Font {
        Font.custom("Inter-Regular", size: size)
    }
    
    static var regular_B1: Font {
        Font.custom("Inter-Regular", size: 23)
    }
    
    static var regular_B2: Font {
        Font.custom("Inter-Regular", size: 20)
    }
}
