//
//  TaskModifier.swift
//  AsyncNetwork
//
//  Created by Ali Mert Özhayta on 8.12.2024.
//

import SwiftUI

extension View {

    ///
    /// Normally `.task {}` modifier is only available in iOS 15+.
    /// This custom task modifier will help us to use it in iOS 14.
    ///
    @available(iOS, deprecated: 15.0)
    func task(priority: TaskPriority = .userInitiated, _ action: @escaping @Sendable () async -> Void) -> some View {
        self.modifier(TaskModifier(priority: priority, action: action))
    }
}

struct TaskModifier: ViewModifier {
    let priority: TaskPriority
    let action: @Sendable () async -> Void
    @State var task: Task<Void, Never>? = nil

    func body(content: Content) -> some View {
        content
            .onAppear {
                if task != nil {
                    task?.cancel()
                }
                task = Task(priority: priority, operation: action)
            }
            .onDisappear {
                task?.cancel()
            }
    }
}
