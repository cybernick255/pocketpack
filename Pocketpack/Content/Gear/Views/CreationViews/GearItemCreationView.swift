//
//  GearItemCreationView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/31/25.
//

import SwiftUI

struct GearItemCreationView: View
{
    @Environment(\.dismiss) private var dismiss
    
    @Binding var gearSheetContent: GearSheetContent?
    let parentContainer: GearContainer
    
    @State private var isCustomFieldsExpanded = false
    @State private var customItemName: String = ""
    
    init(gearSheetContent: Binding<GearSheetContent?>, parentContainer: GearContainer)
    {
        self._gearSheetContent = gearSheetContent
        self.parentContainer = parentContainer
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
                        Text("Add custom item")
                        Spacer()
                        Image(systemName: isCustomFieldsExpanded ? "chevron.up" : "chevron.down")
                    }
                }
                .buttonStyle(.plain)
                
                if isCustomFieldsExpanded
                {
                    TextField("Name", text: $customItemName)
                    Button(
                        action:
                            {
                                saveItem(name: customItemName)
                            }
                    )
                    {
                        Text("Save")
                    }
                }
            }
            Section("Recommended")
            {
                ForEach(recommendedGearItems)
                { item in
                    Button(
                        action:
                            {
                                saveItem(name: item.name)
                            }
                    )
                    {
                        HStack
                        {
                            Text("\(item.name)")
                        }
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .navigationTitle("Add item")
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
    
    func saveItem(name: String)
    {
        let item = GearItem(name: name)
        
        parentContainer.items.append(item)
        dismiss()
    }
}

#Preview
{
    NavigationStack
    {
        GearItemCreationView(gearSheetContent: .constant(.addItem), parentContainer: GearContainer.sampleData[0])
    }
}
