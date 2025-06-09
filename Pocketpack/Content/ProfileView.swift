//
//  ProfileView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 6/7/25.
//

import SwiftUI

struct ProfileView: View
{
    var body: some View
    {
        NavigationStack
        {
            ContentUnavailableView("Nothing to see here yet!", systemImage: "eyes")
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar
                {
                    ToolbarItem(placement: .topBarLeading)
                    {
                        NavigationLink(destination: SettingsView(), label: {Label("Settings", systemImage: "gear")})
                    }
                }
        }
    }
}

#Preview
{
    NavigationStack
    {
        ProfileView()
    }
}
