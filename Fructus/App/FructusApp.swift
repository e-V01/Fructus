//
//  FructusApp.swift
//  Fructus
//
//  Created by Y K on 12.01.2024.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView() 
            } else {
                ContentView()
            }
        }
    }
}
