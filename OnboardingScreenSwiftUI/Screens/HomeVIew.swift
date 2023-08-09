//
//  HomeVIew.swift
//  OnboardingScreenSwiftUI
//
//  Created by Narayanasamy on 08/08/23.
//

import SwiftUI

struct HomeVIew: View {
    
    // MARK: - PROPERTY
    
    @AppStorage ("Onboarding") var isOnboardingViewActive: Bool = false
    
    // MARK: BODY
    
    var body: some View {
        VStack {
            Text("Home")
                .font(.largeTitle)
            
    
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Text("Restart")
            }
        }
       
    }
}
 
// MARK: - PREVIEW

struct HomeVIew_Previews: PreviewProvider {
    static var previews: some View {
        HomeVIew()
    }
}
