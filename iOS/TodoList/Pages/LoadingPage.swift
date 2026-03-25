//
//  LoadingPage.swift
//  TodoList
//
//  Created by Molly Norman on 2/27/26.
//

import SwiftUI

struct LoadingPage: View {
    var body: some View {
        VStack {
            Text("My Todo List")
                .bold()
                .font(.largeTitle)
            Text("Create by: Molly Norman")
                .italic()
                .padding(.bottom)
            ProgressView()
        }
    }
}

#Preview {
    LoadingPage()
}
