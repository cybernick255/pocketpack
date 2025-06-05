//
//  Section.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/19/25.
//

import Foundation

struct GuideSection
{
    let name: String
    let tileImage: String
    let topics: [Topic]
}

// Note: Make topics in all 4 sections in alphabetical order.
let wildlifeAndInsectsSection =
GuideSection(
    name: "Wildlife & Insects",
    tileImage: "pawprint.fill",
    topics: wildlifeAndInsectsTopics
)

let environmentalHazardsSection =
GuideSection(
    name: "Environmental Hazards",
    tileImage: "cloud.bolt.fill",
    topics: environmentalHazardsTopics
)

let survivalAndSafetySection =
GuideSection(
    name: "Survival & Safety",
    tileImage: "cross.case.fill",
    topics: survivalAndSafetyTopics
)

let practicalTipsSection =
GuideSection(
    name: "Practical Tips",
    tileImage: "backpack.fill",
    topics: practicalTipsTopics
)
