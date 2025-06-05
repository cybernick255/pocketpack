//
//  Constants.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/29/25.
//

import Foundation
import SwiftUI

let guidePrimaryColor: Color = Color(red: 248/255, green: 237/255, blue: 210/255)
let guideSecondaryColor: Color = Color(red: 239/255, green: 227/255, blue: 194/255)
let guideTileIconColor: Color = Color(red: 130/255, green: 111/255, blue: 65/255)
let guideTileTextColor: Color = Color(red: 105/255, green: 87/255, blue: 52/255)



let gearColorTuples: [(color: Color, name: String)] =
[
    (Color.red, "red"),
    (Color.orange, "orange"),
    (Color.yellow, "yellow"),
    (Color.green, "green"),
    (Color.blue, "blue"),
    (Color.purple, "purple"),
    (Color.pink, "pink"),
    (Color.brown, "brown"),
    (Color.gray, "gray")
]



enum GearSheetContent
{
    case addContainer
    case addSubcontainer
    case addItem
}

extension GearSheetContent: Identifiable
{
    var id: String
    {
        switch self
        {
        case .addContainer: return "addContainer"
        case .addSubcontainer: return "addSubcontainer"
        case .addItem: return "addItem"
        }
    }
}
