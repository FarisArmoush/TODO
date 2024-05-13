//
//  TODOModel.swift
//  TODO
//
//  Created by Faris Armoush on 08/05/2024.
//

import Foundation

struct TODOModel: Identifiable, Equatable {
    var id: UUID
    var title: String
    var notes: String?
    var icon: String?
    var dueDate: Date
    var priority: TODOPriority?
}
