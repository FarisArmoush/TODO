//
//  TODOViewModel.swift
//  TODO
//
//  Created by Faris Armoush on 08/05/2024.
//

import Foundation

class TODOViewModel: ObservableObject {
    
    init(todoService: TODOService) {
        self.todoService = todoService
    }
    
    let todoService: TODOService
    
    @Published var getLoading: Bool = true
    @Published var isAdd: Bool = false
    @Published var todos: [TODOModel] = [
        TODOModel(
            id: UUID(),
            title: "Buy dog food",
            notes: "Buy the good kind, dont be a cheap fuck",
            icon: "dog.fill",
            dueDate: Date.distantFuture,
            priority: .high
        ),
        TODOModel(
            id: UUID(),
            title: "Buy Rabbit blood",
            icon: "hare.fill",
            dueDate: Date.distantFuture,
            priority: .medium
        ),
        TODOModel(
            id: UUID(),
            title: "Buy cat food",
            notes: "fuck cats dont buy them food",
            icon: "cat.fill",
            dueDate: Date.distantFuture,
            priority: .low
        ),
    ]

    func fetchTodos() -> Void {
        self.getLoading = true
        let todos = todoService.fetchTodos()
        self.todos = todos
        self.getLoading = false
    }

    @Published var createLoading: Bool = false

    func createTodo(_ todo: TODOModel) {
        self.createLoading = true
        todoService.createTodo(todo)
        self.createLoading = false
    }
}
