//
//  ContentView.swift
//  TODO
//
//  Created by Faris Armoush on 08/05/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = TODOViewModel(todoService: TODOService())
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                if viewModel.todos.isEmpty {
                    ContentUnavailableView(
                        "You dont have todo's\nStart by creating one!",
                        systemImage: "plus.app"
                    )
                } else {
                    TODOList(viewModel: viewModel)
                }
                
                AddTODOFloatingActionButton(viewModel: viewModel)
            }
            .navigationTitle("TODO List")
            .sheet(isPresented: $viewModel.isAdd,
                   onDismiss: { viewModel.isAdd = false },
                   content: { AddTODOSheet(viewModel: viewModel) }
            )
        }
    }
}
struct TODOCell: View {
    let todo: TODOModel
    var body: some View {
        HStack {
            if todo.icon != nil {
                Image(systemName: todo.icon ?? "")
                    .foregroundStyle(.secondary)
            }
            VStack(alignment: .leading) {
                Text(todo.title)
                    .font(.body)
                if todo.notes != nil {
                    Text(todo.notes ?? "")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
            }
            Spacer(minLength: 16)
            if todo.priority != nil {
                Text(todo.priority?.label ?? "")
                    .foregroundStyle(todo.priority?.color ?? .black)
                    .font(.caption)
                    .fontWeight(.bold)
            }
        }
    }
}

struct TODOList: View {
    @ObservedObject var viewModel: TODOViewModel
    var body: some View {
        List {
            ForEach(viewModel.todos, id: \.self.id) { todo in
                TODOCell(todo: todo)
            }.onDelete(perform: { indexSet in
                viewModel.todos.remove(atOffsets: indexSet)
            })
        }
    }
}

struct AddTODOFloatingActionButton: View {
    @ObservedObject var viewModel: TODOViewModel
    var body: some View {
        Button(action: toggleIsAdd) {
            Image(systemName: "plus")
                .font(.title)
                .padding()
                .background(.red, in: Circle())
                .foregroundColor(.white)
                .shadow(radius: 10)
                .padding(.horizontal) // Functions like margin
        }
    }
    
    private func toggleIsAdd() -> Void {
        viewModel.isAdd = true
    }
}

struct AddTODOSheet: View {
    @ObservedObject var viewModel: TODOViewModel
    var body: some View {
        Form {
            
        }
    }
}

#Preview {
    ContentView()
}
