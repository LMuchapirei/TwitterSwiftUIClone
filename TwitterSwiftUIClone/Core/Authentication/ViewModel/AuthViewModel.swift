//
//  AuthViewModel.swift
//  TwitterSwiftUIClone
//
//  Created by Linval Muchapirei on 27/3/2023.
//

import Firebase
import SwiftUI


class AuthViewModel: ObservableObject {
    @Published var userSession = Firebase.Auth.auth().currentUser
    
    init(){
        self.userSession = Auth.auth().currentUser
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail email: String,password: String){
       print("DEBUG: Login with email \(email)")
    }
    
    func register(withEmail email: String,password: String,fullName:String,userName:String){
        Auth.auth().createUser(withEmail: email, password: password){
            result,error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription )")
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            
            print("DEBUG: registered user successfully")
            print("DEBUG: User is \(self.userSession)")
        }
    }
}




