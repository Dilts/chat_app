//
//  PhoneNumberView.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/27/21.
//

import SwiftUI

struct PhoneNumberView: View {
    
    @Binding var currentStep: OnboardingStep
    
    @State var userPhone = ""
    
    var body: some View {
        
        VStack{
            
            Text("Verification")
                .font(Font.titleCustom)
                .padding(.top, 52)
            
            Text("Enter your mobile number below. A verification code will be sent to your device.")
                .font(Font.bodyCustom)
                .padding(.top, 12)
                .padding(.bottom, 34)
            
            // Text Field
            ZStack{
                Rectangle()
                    .frame(height: 56)
                    .foregroundColor(Color("input"))
                    
                HStack{
                    TextField("e.g. +1 303 555 5555", text: $userPhone)
                        .font(Font.bodyCustom)
                    
                    Spacer()
                    
                    Button {
                        userPhone = ""
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
                currentStep = .verification
            } label: {
                Text("Next")
            }
            .buttonStyle(OnboardingButtonStyle())
            .padding(.bottom, 87)
            
        }
        .padding(.horizontal)
        
    }
}

struct PhoneNumberView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumberView(currentStep: .constant(.phoneNumber))
    }
}
