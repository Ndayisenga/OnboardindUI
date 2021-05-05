//
//  ContentView.swift
//  OnboardindUI
//
//  Created by Ndayisenga Jean Claude on 05/05/2021.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("_shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    var body: some View {
        NavigationView {
            VStack {
                Text("You are in the main app now!")
                    .padding()
            }
            .navigationTitle("Home")
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
