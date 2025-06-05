//
//  Functions.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 6/2/25.
//

import Foundation
import SwiftUI

func gearChosenColor(color: String) -> Color
{
    switch color
    {
    case "red":
        return .red
    case "orange":
        return .orange
    case "yellow":
        return .yellow
    case "green":
        return .green
    case "blue":
        return .blue
    case "purple":
        return .purple
    case "pink":
        return .pink
    case "brown":
        return .brown
    case "gray":
        return .gray
    default:
        return .black
    }
}
