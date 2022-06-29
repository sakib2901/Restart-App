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
        VStack(spacing: 20) {
            Text("HomeView")
                .font(.largeTitle)
            
            Button("Restart") {
                isOnboardingViewActive = true
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
