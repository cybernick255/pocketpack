//
//  SampleData.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 6/3/25.
//

import Foundation
import SwiftData

@MainActor
class SampleData
{
    static let shared = SampleData()
    
    let modelContainer: ModelContainer
    
    var modelContext: ModelContext
    {
        modelContainer.mainContext
    }
    
    private init()
    {
        let schema =
        Schema(
            [
                GearContainer.self
            ]
        )
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)
        
        do
        {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
            
            insertSampleData()
            
            try modelContext.save()
        }
        catch
        {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }
    
    private func insertSampleData()
    {
        for gearContainer in GearContainer.sampleData
        {
            modelContext.insert(gearContainer)
        }
        
        for gearItem in GearItem.sampleData
        {
            modelContext.insert(gearItem)
        }
    }
}
