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
        VStack
        {
            Spacer()
            Text("Version: \(appVersion)")
                .foregroundStyle(.gray)
        }
        .padding()
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
