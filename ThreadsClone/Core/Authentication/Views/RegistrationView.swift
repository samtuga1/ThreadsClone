//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Samuel Twumasi on 31/01/2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var fullName = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            
            Spacer()
            
            Image("threads-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack{
                TextField("Enter your email", text: $email)
                    .autocorrectionDisabled()
                    .modifier(TextfieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(TextfieldModifier())
                
                TextField("Enter your full name", text: $fullName)
                    .modifier(TextfieldModifier())
                
                TextField("Enter your username", text: $username)
                    .modifier(TextfieldModifier())
                
            }
            
            Button{
                
            } label: {
                Text("Sign Up")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(minWidth: 352, minHeight: 44)
                    .font(.subheadline)
                    .background(.black)
                    .cornerRadius(8)
                    .padding(.top)
            }
            
            Spacer()
            
            Divider()
            
            Button(
                action: {
                    dismiss()
                },
                label: {
                HStack(spacing: 3, content: {
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }).font(.footnote)
                .foregroundColor(.black)
            }).padding(.vertical, 16)
            
        }
    }
}

#Preview {
    RegistrationView()
}
