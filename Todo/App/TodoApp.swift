//
//  TodoApp.swift
//  Todo
//
//  Created by Danish Shaikh on 06/11/26.
//

import SwiftUI
import SwiftData

@main
struct TodoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Task.self)
    }
}
