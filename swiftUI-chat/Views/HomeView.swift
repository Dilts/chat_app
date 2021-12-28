//
//  HomeView.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/23/21.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedTab: Tabs = .contacts
    
    @State var isOnboarded = !AuthViewModel.isUserLoggedIn()
    
    var body: some View {
        
        VStack{
            Text("hello")

            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
        }
        .fullScreenCover(isPresented: $isOnboarded) {
            // On dismiss
        } content: {
            OnboardingContainer(isOnboarded: $isOnboarded)
        }

        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
