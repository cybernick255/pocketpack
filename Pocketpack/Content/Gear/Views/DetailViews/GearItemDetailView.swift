//
//  GearItemDetailView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/30/25.
//

import SwiftUI

struct GearItemDetailView: View
{
    let item: GearItem
    
    var body: some View
    {
        List
        {
            Text("Data for \(item.name) goes here")
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview
{
    NavigationStack
    {
        GearItemDetailView(item: GearItem.sampleData[0])
    }
}
