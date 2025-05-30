//
//  SectionTileView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/19/25.
//

import SwiftUI

struct SectionTileView: View
{
    let section: Section
    let geometrySize: Double
    
    var body: some View
    {
        NavigationLink(destination: SectionView(topics: section.topics, geometrySize: geometrySize))
        {
            VStack
            {
                Image(systemName: section.tileImage)
                    .resizable()
                    .foregroundColor(guideTileIconColor)
                    .scaledToFit()
                    .frame(width: geometrySize * 0.3, height: geometrySize * 0.3 / 2)
                Text(section.name)
                    .font(.headline)
                    .foregroundColor(guideTileTextColor)
                    .multilineTextAlignment(.center)
                    .frame(width: geometrySize * 0.3, height: geometrySize * 0.3 / 2)
            }
            .frame(width: geometrySize * 0.3, height: geometrySize * 0.3)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(guidePrimaryColor)
                    .stroke(guideSecondaryColor, lineWidth: 4)
            )
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview
{
    SectionTileView(section: wildlifeAndInsectsSection, geometrySize: 402)
}
