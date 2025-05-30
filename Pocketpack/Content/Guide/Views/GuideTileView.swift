//
//  GuideSectionView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/14/25.
//

import SwiftUI

struct GuideTileView: View
{
    var body: some View
    {
        NavigationLink(destination: GuideView())
        {
            VStack
            {
                Text("📖")
                    .font(.largeTitle)
                Text("Guide")
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
    GuideTileView()
}
