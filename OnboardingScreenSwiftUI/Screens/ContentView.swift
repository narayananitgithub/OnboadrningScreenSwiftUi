//
//  ContentView.swift
//  OnboardingScreenSwiftUI
//
//  Created by Narayanasamy on 08/08/23.
//

import SwiftUI


struct ContentView: View {
    
    
  // MARK: - PROPERTY
    
    @AppStorage ("Onboarding") var isOnboardingViewActive: Bool  = true
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
                //true
            } else {
                //false
                HomeVIew()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
   
    static var previews: some View {
        ContentView()
    }
}
