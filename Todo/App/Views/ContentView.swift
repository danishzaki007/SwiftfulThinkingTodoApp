//
//  ContentView.swift
//  Todo
//
//  Created by Danish Shaikh on 06/11/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var viewModel = TaskViewModel()
    @Query private var tasks: [Task]
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        NavigationStack {
            Group {
                if (tasks.isEmpty) {
                    ContentUnavailableView("Add Task", systemImage: "tray.fill", description: Text("Tap '+' to add your first to-do."))
                } else {
                    List {
                        ForEach(tasks) { task in
                            HStack(spacing: 8) {
                                Image(systemName: task.isComplete ? "checkmark.circle.fill" : "circle")
                                    .font(.system(size: 24))
                                                            
                                Text(task.title)
                                    .font(.headline)
                        }
                            .sensoryFeedback(.pathComplete, trigger: task.isComplete)
                            .onTapGesture {
                                withAnimation(.bouncy) {
                                    task.isComplete.toggle()
                                }
                            }
                            .strikethrough(task.isComplete)
                        }
                        .onDelete { offsets in
                            viewModel.deleteTask(at: offsets, context: modelContext, from: tasks)
                        }
                    }
                }
            }
            .navigationTitle("Tasks")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Show Sheet", systemImage: "plus") {
                        viewModel.showSheet.toggle()
                    }
                }
            }
            .sheet(isPresented: $viewModel.showSheet) {
                ShowSheetView()
                    .presentationDetents([.height(200), .fraction(0.2)])
            }
            
        }
    }
}

#Preview {
    ContentView()
}
