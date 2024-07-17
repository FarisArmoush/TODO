//
//  TODO.swift
//  TODO
//
//  Created by Faris Armoush on 11/07/2024.
//

import Foundation

struct TODO: Codable, Identifiable {
    var id: UUID
    var title: String
    var description: String
    var dueDate: Date
}
