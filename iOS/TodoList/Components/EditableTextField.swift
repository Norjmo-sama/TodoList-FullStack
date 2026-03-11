//
//  EditableTextField.swift
//  TodoList
//
//  Created by Molly Norman on 2/27/26.
//

import SwiftUI

struct EditableTextField: View {
    @Binding var text: String
    @State var isEditing: Bool = false
    var body: some View {
        HStack {
            if(isEditing) {
               TextField("", text: $text)
                Spacer()
                Image(systemName: "checkmark")
                    .onTapGesture {
                        isEditing = false
                    }
            } else {
                Text(text)
                Spacer()
                Image(systemName: "pencil.circle")
                    .onTapGesture {
                        isEditing = true
                    }
            }
        }.padding()
    }
}

#Preview {
    @Previewable @State var text: String = ""
    VStack {
        EditableTextField(text: $text)
        EditableTextField(text: $text, isEditing: true)
    }
}
