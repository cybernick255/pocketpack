//
//  GearSubcontainerDetailView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/30/25.
//

import SwiftUI

struct GearSubcontainerDetailView: View
{
    let subcontainer: GearContainer
    
    @State private var gearSheetContent: GearSheetContent?
    
    var body: some View
    {
        VStack
        {
            if subcontainer.items.isEmpty
            {
                GearSubcontainerDetailContentUnavailableView()
            }
            else
            {
                GearSubcontainerDetailListView(subcontainer: subcontainer)
            }
        }
        .navigationTitle(subcontainer.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar
        {
            ToolbarItem
            {
                Button("Add gear item", systemImage: "plus", action: {gearSheetContent = .addItem})
            }
        }
        .sheet(item: $gearSheetContent)
        { gearSheetContent in
            NavigationStack
            {
                GearItemCreationView(gearSheetContent: $gearSheetContent, parentContainer: subcontainer)
            }
            .interactiveDismissDisabled()
        }
    }
    
    struct GearSubcontainerDetailContentUnavailableView: View
    {
        var body: some View
        {
            ContentUnavailableView
            {
                Label("No Items Found", systemImage: "shippingbox")
            }
        description:
            {
                Text("Add an item to get started.")
            }
        }
    }
    
    struct GearSubcontainerDetailListView: View
    {
        let subcontainer: GearContainer
        
        var body: some View
        {
            List
            {
                Section
                {
                    HStack
                    {
                        Spacer()
                        // Note: Make frame use GeometryReader
                        Text(subcontainer.image)
                            .font(.title)
                        Spacer()
                    }
                    .listRowBackground(Color.clear)
                }
                Section(header: Text("Items"))
                {
                    ForEach(subcontainer.items)
                    { item in
                        NavigationLink(destination: GearItemDetailView(item: item))
                        {
                            HStack
                            {
                                // Note: Make frame use GeometryReader
                                Text(item.name)
                            }
                        }
                    }
                    .onDelete(perform: deleteGearItems)
                }
            }
        }
        
        func deleteGearItems(at offsets: IndexSet)
        {
            for offset in offsets
            {
                subcontainer.items.remove(at: offset)
            }
        }
    }
}

#Preview
{
    NavigationStack
    {
        GearSubcontainerDetailView(subcontainer: GearContainer.sampleData[0])
    }
}
