//
//  RegistrationView.swift
//  TwitterSwiftUIClone
//
//  Created by Linval Muchapirei on 26/3/2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var fullname = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        // parent container
        VStack {
                // header view
                AuthHeaderView(headerTitleText1:"Get Started.", headerTitleText2: "Create your account")
            VStack (spacing: 40) {
                CustomTextInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                CustomTextInputField(imageName: "person", placeholderText: "Username", text: $username)
                CustomTextInputField(imageName: "person", placeholderText: "Fullname", text: $fullname)
                CustomTextInputField(imageName: "lock", placeholderText: "Password", text: $password)            }
            .padding(32)
            
            Button{
                print("Sign up here...")
            }label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340,height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10,x: 0,y: 0)
            Spacer()
            Button{
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    Text("Sign In")
                        .font(.body)
                        .fontWeight(.semibold)
                }
            }.padding(.bottom,32)
                .foregroundColor(Color(.systemBlue))
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
