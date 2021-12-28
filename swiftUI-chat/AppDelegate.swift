//
//  AppDelegate.swift
//  swiftUI-chat
//
//  Created by Brian Dilts on 12/23/21.
//

import Foundation
import UIKit
import Firebase



class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
                   [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
