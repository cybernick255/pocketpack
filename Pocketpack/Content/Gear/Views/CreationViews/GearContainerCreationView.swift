//
//  GearContainerCreationView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/30/25.
//

import SwiftUI

struct GearContainerCreationView: View
{
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var modelContext
    
    @Binding var gearSheetContent: GearSheetContent?
    
    @State private var isCustomFieldsExpanded = false
    @State private var customContainerName: String = ""
    
    init(gearSheetContent: Binding<GearSheetContent?>)
    {
        self._gearSheetContent = gearSheetContent
    }
    
    var body: some View
    {
        List
        {
            Section
            {
                Button(
                    action:
                        {
                            withAnimation
                            {
                                isCustomFieldsExpanded.toggle()
                            }
                        }
                )
                {
                    HStack
                    {
                        Text("Add custom container")
                        Spacer()
                        Image(systemName: isCustomFieldsExpanded ? "chevron.up" : "chevron.down")
                    }
                }
                .buttonStyle(.plain)
                
                if isCustomFieldsExpanded
                {
                    TextField("Name", text: $customContainerName)
                    Button(
                        action:
                            {
                                saveContainer(name: customContainerName, image: "")
                            }
                    )
                    {
                        Text("Save")
                    }
                }
            }
            Section("Recommended")
            {
                ForEach(recommendedGearContainers)
                { gearContainer in
                    Button(
                        action:
                            {
                                saveContainer(name: gearContainer.name, image: gearContainer.image)
                            }
                    )
                    {
                        HStack
                        {
                            Text(gearContainer.image)
                            Text("\(gearContainer.name)")
                        }
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .navigationTitle("Add container")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar
        {
            ToolbarItem(placement: .cancellationAction)
            {
                Button("Cancel")
                {
                    dismiss()
                }
            }
        }
    }
    
    func saveContainer(name: String, image: String)
    {
        let container = GearContainer(name: name, image: image, isGlobalContainer: true)
        
        modelContext.insert(container)
        //try? modelContext.save()
        dismiss()
    }
}

#Preview
{
    NavigationStack
    {
        GearContainerCreationView(gearSheetContent: .constant(.addContainer))
    }
}
