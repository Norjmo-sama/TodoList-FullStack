//
//  LoginPage.swift
//  TodoList
//
//  Created by Molly Norman on 2/27/26.
//

import SwiftUI

struct LoginPage: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            Spacer()
            Text("My Todo List")
                .bold()
                .font(.largeTitle)
            Text("Create by: Molly Norman")
                .italic()
                .padding(.bottom)
            Spacer()
            
            VStack(spacing: 40) {
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
                
                Button {
                    
                } label: {
                    Text("Login")
                }
            }

            Spacer()
        }
    }
}

#Preview {
    LoginPage()
}
