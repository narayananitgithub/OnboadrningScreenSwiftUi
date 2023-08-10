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
        
        // MARK: - HEADER
        VStack (spacing: 20){
            
            Spacer()
            
            ZStack {
                CircleGroupView(Shapecolor: .gray, ShapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
//                .font(.largeTitle)
            }
          
            // CENTER
            
            Text("The time to that  leads  to mastery is dependent on the intensity of our focus")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            //FOOTER
            
            Spacer()
            
    
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3,design: .rounded))
                    .fontWeight(.bold)
                
            }// BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
       
    }
}
 
// MARK: - PREVIEW

struct HomeVIew_Previews: PreviewProvider {
    static var previews: some View {
        HomeVIew()
    }
}
