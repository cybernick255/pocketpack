//
//  SectionView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/19/25.
//

import SwiftUI

struct SectionView: View
{
    let topics: [Topic]
    let geometrySize: Double
    
    var body: some View
    {
        List(topics, id: \.name)
        { topic in
            TopicTileView(topic: topic, geometrySize: geometrySize)
                .listRowBackground(guideSecondaryColor)
        }
        .scrollContentBackground(.hidden)
        .background(guidePrimaryColor)
    }
}

#Preview
{
    SectionView(topics: wildlifeAndInsectsTopics, geometrySize: 402)
}
