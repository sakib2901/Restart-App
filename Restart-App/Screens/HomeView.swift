//
//  HomeView.swift
//  Restart-App
//
//  Created by Sakib Bin Alim on 28/6/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                Spacer()
                
                ZStack {
                    
                    CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                    
                    Image("character-2")
                        .resizable()
                        .scaledToFit()
                }
                                
                Text("""
                The time that leads to mastery is
                dependent on the intensity of our focus
                """)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                
                Spacer()
                
                Button(action: {
                    isOnboardingViewActive = true
                }) {
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .imageScale(.large)
                    Text("Restart")
                        .font(.system(.title3, design: .rounded))
                }
                .frame(width: 150, height: 50)
                .foregroundColor(.white)
                .background(Color("ColorBlue"))
                .clipShape(Capsule())
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
