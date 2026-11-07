//
//  Task.swift
//  Todo
//
//  Created by Danish Shaikh on 06/11/26.
//

import Foundation
import SwiftData

@Model
class Task: Identifiable {
    var id = UUID()
    var title: String
    var isComplete: Bool
    var bookmark: Bool?
    
    init(title: String, isComplete: Bool, bookmark: Bool? = false) {
        self.title = title
        self.isComplete = isComplete
    }
}
