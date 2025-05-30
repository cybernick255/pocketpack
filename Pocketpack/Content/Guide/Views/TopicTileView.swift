//
//  TopicSectionView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/15/25.
//

import SwiftUI

struct TopicTileView: View
{
    let topic: Topic
    let geometrySize: Double
    
    var body: some View
    {
        NavigationLink(destination: TopicView(topic: topic))
        {
            HStack
            {
                Image(topic.tileImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometrySize * 0.2, height: geometrySize * 0.2)
                Text(topic.name)
                    .foregroundStyle(guideTileTextColor)
                    .font(.title)
                    .padding(.leading)
            }
        }
    }
}

#Preview
{
    TopicTileView(topic: tickTopic, geometrySize: 402.0)
}
