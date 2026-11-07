//
//  TaskViewModel.swift
//  Todo
//
//  Created by Danish Shaikh on 06/11/26.
//

import Foundation
import SwiftData

@Observable
class TaskViewModel {
    var title: String = ""
    var isComplete: Bool = false
    var bookmark: Bool? = false
    
    var showSheet = false
    
    func addTask(context: ModelContext) {
        guard !title.isEmpty else { return }
        
        context.insert(Task(title: title, isComplete: false))
        
        title = ""
    }
    
    func deleteTask(at offsets: IndexSet, context: ModelContext, from tasks: [Task]) {
        for index in offsets {
            let item = tasks[index]
            
            context.delete(item)
        }
    }
}
