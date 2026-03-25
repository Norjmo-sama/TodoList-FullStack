//
//  HomePage.swift
//  TodoList
//
//  Created by Molly Norman on 2/27/26.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        VStack {
            Header()
            Spacer()
            List(mockTodoItems) { item in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    Text(item.title)
                    Spacer()
                    Image(systemName: "arrow.right")
                }
            }
        }.overlay {
            ItemEditorOverlay()
        }
    }
    
    func Header() -> some View {
        return HStack {
            Menu {
                Button(role: .destructive) {
                    
                    
                } label: {
                    Label("Logout", systemImage: "rectanlge.portrait.and.arrow.right")
                }
            }
            label: {
                Image(systemName: "person.crop.circle")
                    .font(.title)
            }
            
            Spacer()
            Image(systemName: "plus.circle")
                .font(.title)
        }
        .padding()
    }
}

#Preview {
    HomePage()
}
