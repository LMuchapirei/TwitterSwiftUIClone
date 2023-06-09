//
//  TwitterSwiftUICloneApp.swift
//  TwitterSwiftUIClone
//
//  Created by Linval Muchapirei on 22/3/2023.
//

import SwiftUI
import Firebase


@main
struct TwitterSwiftUICloneApp: App {
    @StateObject var viewModel = AuthViewModel()
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }.environmentObject(viewModel)
        }
    }
}
