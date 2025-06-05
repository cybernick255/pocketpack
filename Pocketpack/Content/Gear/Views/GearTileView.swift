//
//  GearTileView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/30/25.
//

import SwiftUI

// Note: GearTileView & GuideTileView are almost identical. Consider making one reusable view for them.
struct GearTileView: View
{
    var body: some View
    {
        NavigationLink(destination: GearView())
        {
            VStack
            {
                Text("🎒")
                    .font(.largeTitle)
                Text("Gear")
                    .font(.headline)
                    .foregroundColor(Color.black)
            }
            // Note: Make frame use GeometryReader size.
            .frame(width: 120, height: 120)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
                    .shadow(
                        color: .black.opacity(0.1),
                        radius: 4
                    )
            )
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview
{
    GearTileView()
}
