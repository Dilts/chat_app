//
//  OnboardingContainer.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/27/21.
//

import SwiftUI

enum OnboardingStep: Int {
    case welcome = 0
    case phoneNumber = 1
    case verification = 2
    case profile = 3
    case contacts = 4
}


struct OnboardingContainer: View {
    
    @Binding var isOnboarded: Bool
    
    @State var currentStep: OnboardingStep = .welcome
    
    var body: some View {
        
        ZStack {
            
            Color("background")
                .ignoresSafeArea()
            
            switch currentStep {
                
            case .welcome:
                WelcomeView(currentStep: $currentStep)
            case .phoneNumber:
                PhoneNumberView(currentStep: $currentStep)
            case .verification:
                VerificationView(currentStep: $currentStep)
            case .profile:
                ProfileView(currentStep: $currentStep)
            case .contacts:
                SyncContactsView(isOnboarded: $isOnboarded )
                
            }
            
        }
        
    }
    
    
}

struct OnboardingContainer_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingContainer(isOnboarded: .constant(false))
    }
}
