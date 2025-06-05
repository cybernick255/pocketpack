//
//  GearContainerDetailView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/30/25.
//

import SwiftUI

struct GearContainerDetailView: View
{
    let container: GearContainer
    
    @State private var gearSheetContent: GearSheetContent?
    
    var body: some View
    {
        VStack
        {
            if container.subcontainers.isEmpty && container.items.isEmpty
            {
                GearContainerDetailContentUnavailableView()
            }
            else
            {
                GearContainerDetailListView(container: container)
            }
        }
        .navigationTitle(container.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar
        {
            ToolbarItem
            {
                Menu
                {
                    Button(
                        action:
                            {
                                gearSheetContent = .addSubcontainer
                            }
                    )
                    {
                        Label("Add subcontainer", systemImage: "plus")
                    }
                    Button(
                        action:
                            {
                                gearSheetContent = .addItem
                            }
                    )
                    {
                        Label("Add item", systemImage: "plus")
                    }
                }
            label:
                {
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(item: $gearSheetContent)
        { gearSheetContent in
            NavigationStack
            {
                if gearSheetContent == .addSubcontainer
                {
                    GearSubcontainerCreationView(gearSheetContent: $gearSheetContent, parentContainer: container)
                }
                else
                {
                    GearItemCreationView(gearSheetContent: $gearSheetContent, parentContainer: container)
                }
            }
            .interactiveDismissDisabled()
        }
    }
    
    struct GearContainerDetailContentUnavailableView: View
    {
        var body: some View
        {
            ContentUnavailableView
            {
                Label("No Containers or Items Found", systemImage: "shippingbox")
            }
        description:
            {
                Text("Add a container or item to get started.")
            }
        }
    }
    
    struct GearContainerDetailListView: View
    {
        let container: GearContainer
        
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
                        Text(container.image)
                            .font(.title)
                        Spacer()
                    }
                    .listRowBackground(Color.clear)
                }
                Section(header: Text("Subcontainers"))
                {
                    ForEach(container.subcontainers)
                    { subcontainer in
                        NavigationLink(destination: GearSubcontainerDetailView(subcontainer: subcontainer))
                        {
                            HStack
                            {
                                // Note: Make frame use GeometryReader
                                Text(subcontainer.image)
                                Text(subcontainer.name)
                                    .font(.title)
                                    .padding(.leading)
                            }
                        }
                    }
                    .onDelete(perform: deleteGearSubcontainers)
                }
                Section(header: Text("Items"))
                {
                    ForEach(container.items)
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
        
        func deleteGearSubcontainers(at offsets: IndexSet)
        {
            for offset in offsets
            {
                container.subcontainers.remove(at: offset)
            }
        }
        
        func deleteGearItems(at offsets: IndexSet)
        {
            for offset in offsets
            {
                container.items.remove(at: offset)
            }
        }
    }
}

#Preview
{
    NavigationStack
    {
        GearContainerDetailView(container: GearContainer.sampleData[0])
    }
}
