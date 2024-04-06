//
//  LoginView.swift
//  ThreadsClone
//
//  Created by Samuel Twumasi on 30/01/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
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
                    
                }
                
                NavigationLink(
                    destination: Text("Forgot password"),
                    label: {
                        Text("Forgot password")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.vertical)
                            .padding(.trailing, 28)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                )
                
                Button(
                action: {},
                label: {
                     Text("Login")
                         .font(.subheadline)
                         .fontWeight(.semibold)
                         .foregroundColor(.white)
                         .frame(minWidth: 352, minHeight: 44)
                         .background(.black)
                         .cornerRadius(8)
                     
                 }
                )
                
                Spacer()
                
                Divider()
                
                NavigationLink(
                    destination: RegistrationView()
                        .navigationBarBackButtonHidden(true),
                    label: {
                        HStack(
                            spacing: 3,
                            content: {
                            Text("Don't have an account?")
                                
                            Text("Sign up")
                                .fontWeight(.bold)
                               
                        })
                        .font(.footnote)
                        .foregroundColor(.black)
                    }).padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
