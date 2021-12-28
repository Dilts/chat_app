//
//  Fonts.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/23/21.
//

import Foundation
import SwiftUI

extension Font {
    
    public static var bodyCustom: Font {
        return Font.custom("Montserrat-Regular", size: 16)
    }
    
    public static var buttonCustom: Font {
        return Font.custom("Montserrat-Bold", size: 16)
    }
    
    public static var captionCustom: Font {
        return Font.custom("Montserrat-Regular", size: 12)
    }
    
    public static var tabBarCustom: Font {
        return Font.custom("Montserrat-Regular", size: 14)
    }
    
    public static var settingsCustom: Font {
        return Font.custom("Montserrat-Regular", size: 18)
    }
    
    public static var titleCustom: Font {
        return Font.custom("Montserrat-Bold", size: 25)
    }
    
    public static var thinTitleCustom: Font {
        return Font.custom("Montserrat-ExtraLight", size: 25)
    }
    
    public static var pageTitleCustom: Font {
        return Font.custom("Montserrat-SemiBold", size: 36)
    }
    
    public static var chatHeadingCustom: Font {
        return Font.custom("Montserrat-SemiBold", size: 16)
    }
    
    
}
