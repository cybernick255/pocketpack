//
//  HomeView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 6/7/25.
//

import SwiftUI

struct HomeView: View
{
    var body: some View
    {
        NavigationStack
        {
            ZStack
            {
                Image("home-background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                VStack
                {
                    Spacer()
                    VStack(alignment: .leading)
                    {
                        Text("Your Essentials")
                            .font(.title)
                            .fontWeight(.medium)
                        HStack
                        {
                            GuideTileView()
                            GearTileView()
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview
{
    HomeView()
}
