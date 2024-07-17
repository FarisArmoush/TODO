//
//  TODOService.swift
//  TODO
//
//  Created by Faris Armoush on 11/07/2024.
//

import Foundation
import SwiftData

protocol TODOService {
    func create(_ todo: TODO)
    func read() -> [TODO]
    func update(_ todo: TODO) -> TODO
    func delete(_ todo: TODO)
}

// TODO: Add Implementation
class TODOServiceSwiftData: TODOService {
    func create(_ todo: TODO) {
        
    }
    
    func read() -> [TODO] {
        [TODO]()
    }
    
    func update(_ todo: TODO) -> TODO {
        TODO(id: UUID(), title: "", description: "", dueDate: Date.now)
    }
    
    func delete(_ todo: TODO) {
        
    }
}
