//
//  CircleGroupView.swift
//  OnboardingScreenSwiftUI
//
//  Created by Narayanasamy on 09/08/23.
//

import SwiftUI

struct CircleGroupView: View {
    
    // MARK: - BODY
    @State var Shapecolor: Color
    @State var ShapeOpacity: Double
    
    //MARK: - PROPERTY
    
    var body: some View {
            ZStack {
                Circle()
                    .stroke(Shapecolor.opacity(ShapeOpacity),lineWidth: 40)
                    .frame(width: 260 ,height: 260,alignment: .center)
                Circle()
                    .stroke(Shapecolor.opacity(ShapeOpacity),lineWidth: 80)
                    .frame(width: 260,height: 260 ,alignment: .center)
            }//ZSTACK
        }

    }

// MARK: - PREVIEW

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all,edges: .all)
            CircleGroupView(Shapecolor: .white, ShapeOpacity: 0.2)
        }
    }
}
