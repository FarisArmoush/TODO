//
//  TODOServiceSwiftData.swift
//  TODO
//
//  Created by Faris Armoush on 17/07/2024.
//

import Foundation
import SwiftData

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
