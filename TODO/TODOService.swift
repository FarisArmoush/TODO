//
//  TODOService.swift
//  TODO
//
//  Created by Faris Armoush on 11/07/2024.
//

import Foundation

protocol TODOService {
    func create(_ todo: TODO)
    func read() -> [TODO]
    func update(_ todo: TODO) -> TODO
    func delete(_ todo: TODO)
}
