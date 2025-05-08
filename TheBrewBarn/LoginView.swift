//
//  LoginView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 2/6/25.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var rememberMe: Bool = false
    @State private var loginError: Bool = false
    @Binding var isLoggedIn: Bool

    let correctUsername = "admin"
    let correctPassword = "admin"

    var body: some View {
        
        if isLoggedIn {
            ContentView()
        } else {
            
        }
        
        ZStack {
            Image("loginbg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                Text("THE BREW BARN")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.mybrown)
                
                VStack(spacing: 15) {
                    HStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(.gray)
                        TextField("Username", text: $username)
                            .textInputAutocapitalization(.never)
                    }
                    .padding()
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(10)
                    
                    HStack {
                        Image(systemName: "lock.fill")
                            .foregroundColor(.gray)
                        SecureField("Password", text: $password)
                    }
                    .padding()
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(10)
                }
                .padding(.horizontal, 30)
                
                Toggle("Remember me on this device", isOn: $rememberMe)
                    .padding(.horizontal, 30)
                    .foregroundColor(.gray)
                
                if loginError {
                    Text("Invalid username or password. Please try again.")
                        .foregroundColor(.red)
                    
                }
                Button(action: {
                    if username == correctUsername && password == correctPassword {
                        withAnimation {
                            isLoggedIn = true
                        }
                    } else {
                        isLoggedIn = true
                    }
                }) {
                    Text("Login")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.mybrown)
                        .cornerRadius(100)
                }
                .padding(.horizontal, 30)
                
                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(.gray)
                    Text("Create an account")
                        .foregroundColor(.blue)
                        .bold()
                }
                Spacer()
            }
        }
    }
    
}

#Preview {
    LoginView(isLoggedIn: .constant(false))
}
