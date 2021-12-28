//
//  SyncContactsView.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/27/21.
//

import SwiftUI

struct SyncContactsView: View {
    
    
    @Binding var isOnboarded: Bool
    
    var body: some View {
        
        VStack{
            
            Spacer()
            
            Image("onboarding-all-set")
            
            Text("Awesome!")
                .font(Font.titleCustom)
                .padding(.top, 32)
            
            Text("Continue to start chatting with your friends")
                .font(Font.bodyCustom)
                .padding(.top, 8)
            
            Spacer()
            
            Button {
                // Next Step
                isOnboarded = false
            } label: {
                Text("Continue")
            }
            .buttonStyle(OnboardingButtonStyle())
            .padding(.bottom, 87)
            
        }
        .padding(.horizontal)
        
    }
}

struct SyncContactsView_Previews: PreviewProvider {
    static var previews: some View {
        SyncContactsView(isOnboarded: .constant(false))
    }
}
