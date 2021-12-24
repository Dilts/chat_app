//
//  AuthViewModel.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/23/21.
//

import Foundation
import FirebaseAuth

class AuthViewModel {
    static func isUserLoggedIn() -> Bool {
        return Auth.auth().currentUser != nil
    }
    
    static func getLoggedInUserID() -> String {
        return Auth.auth().currentUser?.uid ?? ""
    }
    
    static func logout() {
        try? Auth.auth().signOut()
    }
}
