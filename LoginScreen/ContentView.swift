//
//  ContentView.swift
//  LoginScreen
//
//  Created by Brian Fontenot on 7/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var scale = 0.1
    @State private var opacity = 0.0
    @State private var isLogin = true
    
    enum FormField: Hashable {
        case email
        case password
    }
    
    @FocusState private var isFocused: FormField?
    
    @State private var email = ""
    @State private var password = ""
       
    var body: some View {
        VStack {
            LogoView()
                .scaleEffect(scale)
                .animation(.linear(duration: 1), value: scale)
            
            Spacer()
            
            VStack {
                VStack {
                    TextField("email", text: $email)
                        .focused($isFocused, equals: .email)
                        .keyboardType(.emailAddress)
                    Divider()
                        .background(Color("AccentColor"))
                }
                VStack {
                    SecureField("password", text: $password)
                        .focused($isFocused, equals: .password)
                        .keyboardType(.emailAddress)
                    Divider()
                        .background(Color("AccentColor"))
                }
            }
            .padding()
            
            Spacer()
            
            Button {
                onAuth()
            } label: {
                Text(isLogin ? "Login" : "Sign Up")
                    .padding(6)
                    .frame(maxWidth: .infinity)
                    .animation(.linear(duration: 0.2), value: isLogin)
            }
            
            .buttonStyle(.borderedProminent)
            .tint(Color("AccentColor"))
            
            Spacer()
            
            VStack {
                
                HStack {
                    Spacer()
                    
                    if (isLogin) {
                        Text("Not a member yet? ")
                            .font(.subheadline)
                            .bold()
                            .foregroundStyle(.gray)
                        
                        Text("Sign Up")
                            .font(.subheadline)
                            .bold()
                            .foregroundStyle(Color("AccentColor"))
                        
                    
                    } else {
                        Text("Already a member? ")
                            .font(.subheadline)
                            .bold()
                            .foregroundStyle(.gray)
                        
                        Text("Login")
                            .font(.subheadline)
                            .bold()
                            .foregroundStyle(Color("AccentColor"))
                        
                    }

                    Spacer()
                }
                .animation(.linear(duration: 0.2), value: isLogin)
                .onTapGesture {
                    isLogin.toggle()
                }
            }
        }
        .padding()
        .opacity(opacity)
        .animation(.linear(duration: 1), value: opacity)
        .onTapGesture {
            
        }
        .onAppear {
            scale = 0.5
            opacity = 1.0
        }
    }
    
    func onAuth() {
        if isLogin {
            // TODO: login()
        } else {
            // TODO: register()
        }
    }
   
}

#Preview {
    ContentView()
}

