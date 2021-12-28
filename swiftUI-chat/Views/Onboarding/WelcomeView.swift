//
//  WelcomeView.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/27/21.
//

import SwiftUI

struct WelcomeView: View {
    
    @Binding var currentStep: OnboardingStep
    
    var body: some View {
        
        VStack{
            
            Spacer()
            
            Image("onboarding-welcome")
            
            Text("Welcome to Chat App")
                .font(Font.titleCustom)
                .padding(.top, 32)
            
            Text("Simple chat experience example")
                .font(Font.bodyCustom)
                .padding(.top, 8)
            
            Spacer()
            
            Button {
                // Next Step
                currentStep = .phoneNumber
            } label: {
                Text("Get Started")
            }
            .buttonStyle(OnboardingButtonStyle())
            
            Text("By tapping 'Get Started' you agree to our privacy policy")
                .font(Font.captionCustom)
                .padding(.top, 14)
                .padding(.bottom, 61)
            
        }
        .padding(.horizontal)
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(currentStep: .constant(.welcome))
    }
}
