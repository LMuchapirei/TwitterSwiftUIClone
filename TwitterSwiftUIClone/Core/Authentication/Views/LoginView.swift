//
//  LoginView.swift
//  TwitterSwiftUIClone
//
//  Created by Linval Muchapirei on 26/3/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        // parent container
        VStack {
            // header view
            VStack (alignment: .leading){
                 HStack{ Spacer()}
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            
            VStack (spacing: 40) {
                TextField("Email",text: $email)
                TextField("Password",text:$password)
            }
            .padding(.horizontal,32)
            .padding(.top,44)
            
            HStack {
                Spacer()
                NavigationLink {
                    Text("Reset password view...")
                } label: {
                    Text("Forgot Password")
                }
            }
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
