//
//  ShowSheetView.swift
//  Todo
//
//  Created by Danish Shaikh on 06/11/26.
//

import SwiftUI
import SwiftData

struct ShowSheetView: View {
    @State private var viewModel = TaskViewModel()
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    
    @FocusState private var isFocused: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            TextField("Add title", text: $viewModel.title)
                .padding(.horizontal, 8)
                .frame(maxWidth: .infinity)
                .frame(height: 54)
                .background(Color.primary.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 24))
                .padding(.horizontal, 2)
                .focused($isFocused)
            
            Button {
                viewModel.addTask(context: modelContext)
                isFocused = false
                dismiss()
            } label: {
                Text("Add Task")
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .onAppear {
            isFocused = true
        }
    }
}

#Preview {
    ShowSheetView()
}
