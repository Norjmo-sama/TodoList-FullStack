//
//  TodoItem.swift
//  TodoList
//
//  Created by Molly Norman on 2/27/26.
//
import Foundation

enum ItemStatus: String, CaseIterable {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
    case arched = "Archived"
}

struct TodoItem : Identifiable {
    let id = UUID().uuidString
    let title: String
    let desc: String?
    
    let itemStatus: ItemStatus
    
    let creationDate: Date = Date()
    let lastUpdated: Date = Date()
}

// Mock Data for Testing

let mockTodoItems: [TodoItem] = [

    TodoItem(
        title: "Finish SwiftUI Assignment",
        desc: "Complete the TodoList project for class",
        itemStatus: .inProgress
    ),

    TodoItem(
        title: "Study for Math Test",
        desc: "Review trigonometry notes and practice problems",
        itemStatus: .notStarted
    ),

    TodoItem(
        title: "Buy Groceries",
        desc: "Milk, eggs, bread, and fruit",
        itemStatus: .completed
    ),

    TodoItem(
        title: "Clean Room",
        desc: "Vacuum and organize desk",
        itemStatus: .notStarted
    ),

    TodoItem(
        title: "Workout",
        desc: "30-minute cardio session",
        itemStatus: .completed
    ),

    TodoItem(
        title: "Old School Project",
        desc: "Previous semester project files",
        itemStatus: .arched
    )

]
