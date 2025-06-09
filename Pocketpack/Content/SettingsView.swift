//
//  SettingsView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 6/7/25.
//

import SwiftUI

struct SettingsView: View
{
    let appVersion: String = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "Unknown"
    
    var body: some View
    {
        List
        {
            Section
            {
                Link(destination: URL(string: "https://github.com/cybernick255/pocketpack")!)
                {
                    HStack
                    {
                        Image("github-mark")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Open Source Code")
                    }
                }
            }
            Section
            {
                HStack
                {
                    Spacer()
                    Text("Version: \(appVersion)")
                        .foregroundStyle(.gray)
                    Spacer()
                }
            }
            .listRowBackground(Color.clear)
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview
{
    NavigationStack
    {
        SettingsView()
    }
}
