//
//  PocketpackApp.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/14/25.
//

import SwiftUI
import SwiftData

@main
struct PocketpackApp: App
{
    var body: some Scene
    {
        WindowGroup
        {
            ContentView()
        }
        // Don't need to add GearItem.self since it's related to GearContainer.
        .modelContainer(for: GearContainer.self)
    }
}
