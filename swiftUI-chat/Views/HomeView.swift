//
//  HomeView.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/23/21.
//

import SwiftUI

struct HomeView: View {
    
    let allFontNames = UIFont.familyNames
      .flatMap { UIFont.fontNames(forFamilyName: $0) }
    
    var body: some View {
        List(allFontNames, id: \.self) { name in
            Text(name)
              .font(Font.custom(name, size: 12))
          }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
