//
//  TopicGuideView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/15/25.
//

import SwiftUI

struct TopicView: View
{
    @State private var topic: Topic
    
    init(topic: Topic)
    {
        self.topic = topic
    }
    
    var body: some View
    {
        ScrollView
        {
            VStack
            {
                Image(topic.detailedImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(.rect(cornerRadius: 16))
                Text(LocalizedStringKey(topic.description))
                    .padding(.vertical)
                    .foregroundStyle(guideTileTextColor)
                ForEach($topic.advices, id: \.title)
                { $advice in
                    VStack
                    {
                        HStack
                        {
                            Text(advice.title)
                                .fontWeight(.bold)
                                .foregroundStyle(guideTileTextColor)
                            Spacer()
                        }
                        ForEach($advice.items, id: \.title)
                        { $item in
                            VStack
                            {
                                Button(
                                    action:
                                        {
                                            withAnimation
                                            {
                                                item.isExpanded.toggle()
                                            }
                                        }
                                )
                                {
                                    HStack
                                    {
                                        Text(item.title)
                                            .fontWeight(.bold)
                                            .foregroundStyle(guideTileTextColor)
                                        Spacer()
                                        Image(systemName: item.isExpanded ? "chevron.up" : "chevron.down")
                                            .foregroundStyle(guideTileTextColor)
                                    }
                                    // This modifier makes whole area tappable and not just text.
                                    .background(guidePrimaryColor)
                                }
                                .buttonStyle(.plain)
                                
                                if item.isExpanded
                                {
                                    VStack
                                    {
                                        Text(LocalizedStringKey(item.description))
                                            .padding(.vertical)
                                            .foregroundStyle(guideTileTextColor)
                                        
                                        ForEach(item.points, id: \.self)
                                        { point in
                                            HStack
                                            {
                                                VStack
                                                {
                                                    Text("•")
                                                        .foregroundStyle(guideTileTextColor)
                                                    Spacer()
                                                }
                                                
                                                Text(LocalizedStringKey(point))
                                                    .foregroundStyle(guideTileTextColor)
                                                Spacer()
                                            }
                                        }
                                    }
                                }
                            }
                            .padding()
                            .clipped()
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(.clear)
                                    .stroke(guideTileTextColor, lineWidth: 2)
                            )
                        }
                    }
                    .padding(.vertical)
                }
                
                VStack
                {
                    HStack
                    {
                        Text("Sources:")
                            .italic()
                            .foregroundStyle(guideTileTextColor)
                        Spacer()
                    }
                    ForEach(topic.sources, id: \.title)
                    { source in
                        HStack
                        {
                            VStack
                            {
                                Text("•")
                                    .foregroundStyle(guideTileTextColor)
                                Spacer()
                            }
                            Link(source.title, destination: URL(string: source.url)!)
                            Spacer()
                        }
                    }
                }
                .padding(.top)
            }
            .padding()
        }
        // Note: Unable to change navigationTitle foreground color. Text will be hard to read in dark mode.
        .navigationTitle(topic.name)
        .navigationBarTitleDisplayMode(.large)
        .background(guidePrimaryColor)
    }
}

#Preview
{
    TopicView(topic: tickTopic)
}
