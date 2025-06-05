//
//  GearView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/30/25.
//

import SwiftUI
import SwiftData

struct GearView: View
{
    @Query private var gearContainers: [GearContainer]
    @State private var gearSheetContent: GearSheetContent?
    
    init()
    {
        let predicate = #Predicate<GearContainer>
        { gearContainer in
            gearContainer.isGlobalContainer == true
        }
        
        _gearContainers = Query(filter: predicate, sort: \GearContainer.name)
    }
    
    var body: some View
    {
        VStack
        {
            if gearContainers.isEmpty
            {
                GearContentUnavailableView()
            }
            else
            {
                GearListView(gearContainers: gearContainers, gearSheetContent: $gearSheetContent)
            }
        }
        .navigationTitle("Gear")
        .toolbar
        {
            ToolbarItem
            {
                Button("Add gear container", systemImage: "plus", action: {gearSheetContent = GearSheetContent.addContainer})
            }
        }
        .sheet(item: $gearSheetContent)
        { gearSheetContent in
            NavigationStack
            {
                GearContainerCreationView(gearSheetContent: $gearSheetContent)
            }
            .interactiveDismissDisabled()
        }
    }
    
    struct GearContentUnavailableView: View
    {
        var body: some View
        {
            ContentUnavailableView
            {
                Label("No Containers Found", systemImage: "shippingbox")
            }
        description:
            {
                Text("Add a container to get started.")
            }
        }
    }
    
    struct GearListView: View
    {
        @Environment(\.modelContext) private var modelContext
        
        let gearContainers: [GearContainer]
        
        @Binding var gearSheetContent: GearSheetContent?
        
        var body: some View
        {
            List
            {
                ForEach(gearContainers)
                { container in
                    NavigationLink(destination: GearContainerDetailView(container: container))
                    {
                        HStack
                        {
                            // Note: Make frame use GeometryReader
                            Text(container.image)
                                .font(.title)
                                //.frame(width: 32, height: 32)
                            Text(container.name)
                                .font(.title)
                                .padding(.leading)
                        }
                        // Note: Make frame use GeometryReader
                        .frame(height: 64)
                    }
                }
                .onDelete(perform: deleteGearContainers)
            }
        }
        
        func deleteGearContainers(at offsets: IndexSet)
        {
            for offset in offsets
            {
                // find this container in our query
                let container = gearContainers[offset]

                // delete it from the context
                modelContext.delete(container)
            }
        }
    }
}

#Preview
{
    NavigationStack
    {
        GearView()
            .modelContainer(SampleData.shared.modelContainer)
    }
}

#Preview("Empty List")
{
    NavigationStack
    {
        GearView()
            .modelContainer(for: GearContainer.self, inMemory: true)
    }
}
