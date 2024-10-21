//
//  ContentView.swift
//  LoginScreenUI
//
//  Created by Shyamala Ravichandran on 21/10/2024.
//

import SwiftUI


struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Circle ()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale (1.35)
                    .foregroundColor((.white))
                VStack {
                    Text("Login")
                        .font (.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username",text: $username)
                        .padding()
                        .frame (width: 300 , height: 50)
                        .background (Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongUsername))

                    SecureField("Password",text: $password)
                        .padding()
                        .frame (width: 300 , height: 50)
                        .background (Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongPassword))

                    Button ("Login") {

                        authenticate (username: username, password: password)

                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)

                    NavigationLink(destination: Text("You are logged in @\(username)") , isActive: $showingLoginScreen){
                        EmptyView()
                    }

                }
            }

        }.navigationBarHidden(true)

    }

    func authenticate(username: String, password: String){
        if username.lowercased() == "testuser" {
            wrongUsername = 0
            if password.lowercased() == "test1234" {
                wrongPassword = 0
                showingLoginScreen = true
            }else {
                wrongPassword = 2
            }
        }else {
                wrongUsername = 2
            }
        }
    }



#Preview {
    ContentView()
}
