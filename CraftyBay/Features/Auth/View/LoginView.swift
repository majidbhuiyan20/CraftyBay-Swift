//
//  LoginView.swift
//  CraftyBay
//
//  Created by Majid on 10/2/26.
//

import SwiftUI


struct LoginView: View {

    @StateObject private var viewModel = LoginViewModel()
    @State private var goNext = false
    @State private var goMainNav = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                
                Spacer()
                
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Sign in to continue")
                    .foregroundColor(.gray)
                
                TextField("Email", text: $viewModel.email)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                SecureField("Password", text: $viewModel.password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                
                if let error = viewModel.errorMessage {
                    Text(error)
                        .foregroundColor(.red)
                        .font(.caption)
                }
                
                
                Button {
                    goMainNav = true
                    viewModel.login()
                } label: {
                    if viewModel.isLoading {
                        ProgressView()
                            .frame(maxWidth: .infinity)
                    } else {
                        Text("Login")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                    }
                }
                
                .padding()
                .background(AppColor.primaryColor)
                .foregroundColor(.white)
                .cornerRadius(12)
                .disabled(viewModel.isLoading)
                
                
                Spacer()
                
                
                Button("Don’t have an account? Sign Up") {
                    goNext = true
                    print("Navigate to signup")
                }
                .navigationDestination(isPresented: $goNext) {
                                SignupView()
                            }
                .font(.footnote)
            }
            .padding()
            
            
        }
    }
    
}



#Preview {
    LoginView()
}
