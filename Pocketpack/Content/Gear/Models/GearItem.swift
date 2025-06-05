//
//  GearItem.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/30/25.
//

import Foundation
import SwiftData

@Model
class GearItem
{
    var name: String
    
    init(name: String)
    {
        self.name = name
    }
    
    static let sampleData: [GearItem] =
    [
        GearItem(name: "Tent")
    ]
}



let recommendedGearItems: [GearItem] =
[
    tentItem
]

let tentItem =
GearItem(
    name: "Tent"
)
