//
//  ContentView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/14/25.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        TabView
        {
            Tab("", systemImage: "house")
            {
                HomeView()
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
                    .toolbarBackground(guideSecondaryColor, for: .tabBar)
            }
            Tab("", systemImage: "person")
            {
                ProfileView()
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
                    .toolbarBackground(guideSecondaryColor, for: .tabBar)
            }
        }
    }
}

#Preview
{
    ContentView()
        .modelContainer(for: GearContainer.self, inMemory: true)
}
