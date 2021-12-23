//
//  TabBarButton.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/23/21.
//

import SwiftUI

struct TabBarButton: View {
    
    var buttonText: String
    var imageName: String
    var isActive: Bool
    
    var body: some View {
        GeometryReader { geo in
            
            if isActive {
                Rectangle()
                    .foregroundColor(Color("icons-primary"))
                    .frame(width: geo.size.width/2, height: 4)
                    .padding(.leading, geo.size.width/4)
            }
            
            VStack(alignment: .center, spacing: 4) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                Text(buttonText)
                    .font(Font.tabBar)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

