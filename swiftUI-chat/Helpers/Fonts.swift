//
//  Fonts.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/23/21.
//

import Foundation
import SwiftUI

extension Font {
    
    public static var body: Font {
        return Font.custom("Montserrat-Regular", size: 14)
    }
    
    public static var button: Font {
        return Font.custom("Montserrat-Bold", size: 14)
    }
    
    public static var caption: Font {
        return Font.custom("Montserrat-Regular", size: 10)
    }
    
    public static var tabBar: Font {
        return Font.custom("Montserrat-Regular", size: 12)
    }
    
    public static var settings: Font {
        return Font.custom("Montserrat-Regular", size: 16)
    }
    
    public static var title: Font {
        return Font.custom("Montserrat-Bold", size: 23)
    }
    
    public static var thinTitle: Font {
        return Font.custom("Montserrat-ExtraLight", size: 23)
    }
    
    public static var pageTitle: Font {
        return Font.custom("Montserrat-SemiBold", size: 33)
    }
    
    public static var chatHeading: Font {
        return Font.custom("Montserrat-SemiBold", size: 14)
    }
    
    
}
