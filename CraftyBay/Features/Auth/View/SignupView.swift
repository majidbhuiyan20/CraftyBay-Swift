//
//  SignupView.swift
//  CraftyBay
//
//  Created by Majid on 10/2/26.
//

import SwiftUI

struct SignupView: View {
    
    @State private var goLogin = false
    @StateObject private var viewModel = SignupViewModel()
    var body: some View {
        NavigationStack{
            VStack(){
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
                    .cornerRadius(20)
            }.padding()
          
            
            .navigationDestination(isPresented: $goLogin){
                LoginView()
            }
        }
    }
}

#Preview {
    SignupView()
}
