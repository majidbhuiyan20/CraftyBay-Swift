//
//  SignupView.swift
//  CraftyBay
//
//  Created by Majid on 10/2/26.
//

import SwiftUI

struct SignupView: View {
    
    @State private var goLogin = false
    var body: some View {
        NavigationStack{
            VStack{
               
                    
            }
            
            .navigationDestination(isPresented: $goLogin){
                LoginView()
            }
        }
    }
}
