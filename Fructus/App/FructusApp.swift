//
//  FructusApp.swift
//  Fructus
//
//  Created by Jasmine Lai Hweeying on 10/05/2023.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
        
    var body: some Scene {
        WindowGroup{
            ZStack{
                if isOnboardingViewActive{
                    OnboardingView()
                }else{
                    ContentView()
                }
            }
        }
    }
}
