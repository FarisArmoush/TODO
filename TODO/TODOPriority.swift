//
//  TODOPriorityColor.swift
//  TODO
//
//  Created by Faris Armoush on 08/05/2024.
//

import SwiftUI


enum TODOPriority {
    case high
    case medium
    case low
}

extension TODOPriority {
    var color: Color {
        switch self {
        case .high:
            return .red
        case .medium:
            return .orange
        case .low:
            return .blue
        }
    }
    
    var label: String {
        switch self {
        case .high:
            return "!!!"
        case .medium:
            return "!!"
        case .low:
            return "!"
        }
    }
}


