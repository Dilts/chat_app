//
//  ProfileView.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/27/21.
//

import SwiftUI

struct ProfileView: View {
    
    @Binding var currentStep: OnboardingStep
    
    @State var userFirstName = ""
    @State var userLastName = ""
    
    var body: some View {
        
        VStack{
            
            VStack{
                
                Text("Setup Profile")
                    .font(Font.titleCustom)
                    .padding(.top, 52)
                
                Text("Let's setup your profile")
                    .font(Font.bodyCustom)
                    .padding(.top, 12)
                    .padding(.bottom, 34)
                
                Spacer()
                
                // Profile image button
                Button {
                    // Show action sheet
                } label: {
                    
                    ZStack {
                        
                        Circle()
                            .foregroundColor(Color("input"))
                        
                        Circle()
                            .stroke(Color("button-primary"), lineWidth: 2)
                        
                        Image(systemName: "camera.fill")
                            .resizable()
                            .scaledToFit()
                            .tint(Color("icons-input"))
                            .frame(width: 30, height: 30)
                        
                    }
                    .frame(width: 134, height: 134)
                    
                }

                Spacer()
                
                TextField("First Name", text: $userFirstName)
                    .textFieldStyle(CreateProfileTextFieldStyle())
                
                TextField("Last Name", text: $userLastName)
                    .textFieldStyle(CreateProfileTextFieldStyle())
                
                Spacer()
                
                Button {
                    currentStep = .contacts
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(currentStep: .constant(.contacts))
    }
}
