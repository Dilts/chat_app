//
//  HomeView.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/23/21.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedTab: Tabs = .contacts
    
    var body: some View {
        
        VStack{
            Text("hello")

            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
