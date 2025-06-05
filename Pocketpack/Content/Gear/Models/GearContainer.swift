//
//  GearContainer.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/30/25.
//

import Foundation
import SwiftData

@Model
class GearContainer
{
    var name: String
    var image: String
    var isGlobalContainer: Bool
    @Relationship(deleteRule: .cascade) var subcontainers: [GearContainer]
    @Relationship(deleteRule: .cascade) var items: [GearItem]
    
    init(name: String, image: String, isGlobalContainer: Bool, subcontainers: [GearContainer] = [], items: [GearItem] = [])
    {
        self.name = name
        self.image = image
        self.isGlobalContainer = isGlobalContainer
        self.subcontainers = subcontainers
        self.items = items
        
    }
    
    static let sampleData: [GearContainer] =
    [
        GearContainer(
            name: "Backpack",
            image: "🎒",
            isGlobalContainer: true,
            subcontainers:
                [
                    GearContainer(
                        name: "First Aid Kit",
                        image: "⛑️",
                        isGlobalContainer: false,
                        items:
                            [
                                GearItem(name: "Adhesive Bandages")
                            ]
                    )
                ]
        ),
        GearContainer(
            name: "Car",
            image: "🚗",
            isGlobalContainer: true,
            items:
                [
                    GearItem(name: "Tent")
                ]
        )
    ]
}

let recommendedGearContainers: [GearContainer] =
[
    backpackContainer,
    carContainer
]

let backpackContainer =
GearContainer(
    name: "Backpack",
    image: "🎒",
    isGlobalContainer: true
)

let carContainer =
GearContainer(
    name: "Car",
    image: "🚗",
    isGlobalContainer: true
)



let recommendedGearSubcontainers: [GearContainer] =
[
    firstAidKitContainer
]

let firstAidKitContainer =
GearContainer(
    name: "First Aid Kit",
    image: "⛑️",
    isGlobalContainer: false
)
