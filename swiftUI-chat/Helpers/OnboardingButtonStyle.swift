//
//  OnboardingButtonStyle.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/27/21.
//

import Foundation
import SwiftUI

struct OnboardingButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
            
            ZStack{
                Rectangle()
                    .frame(height: 50)
                    .cornerRadius(4)
                    .foregroundColor(Color("button-primary"))
                
                configuration.label
                    .font(Font.buttonCustom)
                    .foregroundColor(Color("text-button"))
            }
        
    }
    
    
}
