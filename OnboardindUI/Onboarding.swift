//
//  Onboarding.swift
//  OnboardindUI
//
//  Created by Ndayisenga Jean Claude on 05/05/2021.
//

import Foundation
import SwiftUI

// Onboarding
struct OnboardingView: View {
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        TabView {
            PageView(title: "Push Notifications",
                     subtitle: "Enable notification to stay up to date with friends.",
                     imageName: "bell",
                     showsDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding
                )
             PageView(title: "Bookmarks",
                     subtitle: "Save your favorite pieces of content.",
                     imageName: "bookmark",
                     showsDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding
                )
             PageView(title: "Flight",
                     subtitle: "Enable notification to stay up to date with friends.",
                     imageName: "airplane",
                     showsDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding
                )
             PageView(title: "Home",
                     subtitle: "Go home wherever you might be",
                     imageName: "house",
                     showsDismissButton: true,
                     shouldShowOnboarding: $shouldShowOnboarding
                )
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    let showsDismissButton:Bool
    @Binding var shouldShowOnboarding: Bool
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            Text(title)
                .font(.system(size: 32))
                .padding()
            
            Text(subtitle)
                .font(.system(size: 24))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            if showsDismissButton {
                Button(action: {
                    shouldShowOnboarding.toggle()
                    
                }, label: {
                    Text("Get Started")
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(6)
                })
            }
            
        }
    }
}

