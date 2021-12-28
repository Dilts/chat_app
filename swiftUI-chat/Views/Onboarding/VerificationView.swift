//
//  VerificationView.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/27/21.
//

import SwiftUI

struct VerificationView: View {
    
    @Binding var currentStep: OnboardingStep
    
    @State var verificationCode = ""
    
    var body: some View {
        
        VStack{
            
            VStack{
                
                Text("Verification")
                    .font(Font.titleCustom)
                    .padding(.top, 52)
                
                Text("Enter your 6-digit code we sent to your device")
                    .font(Font.bodyCustom)
                    .padding(.top, 12)
                    .padding(.bottom, 34)
                
                // Text Field
                ZStack{
                    Rectangle()
                        .frame(height: 56)
                        .foregroundColor(Color("input"))
                        
                    HStack{
                        TextField("", text: $verificationCode)
                            .font(Font.bodyCustom)
                        
                        Spacer()
                        
                        Button {
                            // verify
                        } label: {
                            Image(systemName: "multiply.circle.fill")
                        }
                        .frame(width: 19, height: 19)
                        .tint(Color("icons-input"))
                        
                    }
                    .padding()
                    
                }
                
                Spacer()
                
                Button {
                    currentStep = .profile
                } label: {
                    Text("Next")
                }
                .buttonStyle(OnboardingButtonStyle())
                .padding(.bottom, 87)
                
            }
            .padding(.horizontal)
            
        }
        
    }
}

struct VerificationView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationView(currentStep: .constant(.verification))
    }
}
