//
//  SignupView.swift
//  CraftyBay
//
//  Created by Majid on 10/2/26.
//

import SwiftUI

struct SignupView: View {
    
    @State private var goLogin = false
    @State private var goMainNav = false
    @StateObject private var viewModel = SignupViewModel()
    var body: some View {
        NavigationStack{
            VStack(spacing:12){
                Text("Create Account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(AppColor.primaryColor)
                Text("Sign up to get started")
                    .foregroundColor(.gray)
                
                TextField("First Name", text: $viewModel.firstName)
                    .textInputAutocapitalization(.words)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                
                TextField("Last Name", text: $viewModel.lastName)
                    .textInputAutocapitalization(.words)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                
                TextField("Enter Email", text: $viewModel.email)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                SecureField("Password", text: $viewModel.password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                
                
                TextField("Phone", text:$viewModel.phone)
                    .textInputAutocapitalization(.words)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                
                TextField("City", text:$viewModel.city)
                    .textInputAutocapitalization(.words)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                
                
                
                Button{
                    viewModel.signUp()
                    goMainNav = true
                } label: {
                    if viewModel.isLoading{
                        ProgressView()
                            .frame(maxWidth: .infinity)
                    }
                    else{
                        Text("Sign Up")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                    }
                }
                .padding()
                .background(AppColor.primaryColor)
                .foregroundColor(.white)
                .cornerRadius(12)
                .disabled(viewModel.isLoading)
            }.padding()
            
            Button("Already have an account? Login"){
                goLogin = true
            }
            .font(.footnote)
            .padding(.top, 8)
            
            
            
            
            
                .navigationDestination(isPresented: $goLogin){
                    LoginView()
                }
                .navigationDestination(isPresented: $goMainNav){
                    CustomTabView()
                }
        }
    }
}

#Preview {
    SignupView()
}
