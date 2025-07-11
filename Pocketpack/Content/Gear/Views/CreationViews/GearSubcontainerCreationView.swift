//
//  GearSubcontainerCreationView.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/31/25.
//

import SwiftUI

struct GearSubcontainerCreationView: View
{
    @Environment(\.dismiss) private var dismiss
    
    @Binding var gearSheetContent: GearSheetContent?
    let parentContainer: GearContainer
    
    @State private var isCustomFieldsExpanded = false
    @State private var customSubcontainerName: String = ""
    
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
                        Text("Add custom subcontainer")
                        Spacer()
                        Image(systemName: isCustomFieldsExpanded ? "chevron.up" : "chevron.down")
                    }
                }
                .foregroundStyle(.primary)
                
                if isCustomFieldsExpanded
                {
                    TextField("Name", text: $customSubcontainerName)
                        .onChange(of: customSubcontainerName)
                        { oldValue, newValue in
                            print("O: \(oldValue), N: \(newValue)")
                            if newValue.count > 30
                            {
                                customSubcontainerName = oldValue
                            }
                        }
                    Button(
                        action:
                            {
                                saveSubcontainer(name: customSubcontainerName, image: "📦")
                            }
                    )
                    {
                        Text("Save")
                    }
                    Text("\(customSubcontainerName.count)/30")
                        .listRowBackground(Color.clear)
                }
            }
            Section("Recommended")
            {
                ForEach(recommendedGearSubcontainers)
                { gearSubcontainer in
                    Button(
                        action:
                            {
                                saveSubcontainer(name: gearSubcontainer.name, image: gearSubcontainer.image)
                            }
                    )
                    {
                        HStack
                        {
                            Text(gearSubcontainer.image)
                            Text("\(gearSubcontainer.name)")
                        }
                    }
                    .foregroundStyle(.primary)
                }
            }
        }
        .navigationTitle("Add subcontainer")
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
    
    func saveSubcontainer(name: String, image: String)
    {
        let subcontainer = GearContainer(name: name, image: image, isGlobalContainer: false)
        
        parentContainer.subcontainers.append(subcontainer)
        dismiss()
    }
}

#Preview
{
    NavigationStack
    {
        GearSubcontainerCreationView(gearSheetContent: .constant(.addSubcontainer), parentContainer: GearContainer.sampleData[0])
    }
}
