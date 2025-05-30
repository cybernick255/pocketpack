//
//  GuideView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/14/25.
//

import SwiftUI

struct GuideView: View
{
    var body: some View
    {
        GeometryReader
        { geometry in
            ZStack
            {
                Image("guide-background")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                
                VStack
                {
                    Text("Guide")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(guideTileTextColor)
                        .padding(.top)
                    Spacer()
                    VStack
                    {
                        HStack
                        {
                            SectionTileView(section: wildlifeAndInsectsSection, geometrySize: geometry.size.width)
                                .padding()
                            SectionTileView(section: environmentalHazardsSection, geometrySize: geometry.size.width)
                                .padding()
                        }
                        HStack
                        {
                            SectionTileView(section: survivalAndSafetySection, geometrySize: geometry.size.width)
                                .padding()
                            SectionTileView(section: practicalTipsSection, geometrySize: geometry.size.width)
                                .padding()
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview
{
    GuideView()
}
