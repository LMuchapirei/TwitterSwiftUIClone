//
//  AuthenticationHeader.swift
//  TwitterSwiftUIClone
//
//  Created by Linval Muchapirei on 27/3/2023.
//

import SwiftUI

struct AuthHeaderView: View {
    let headerTitleText1: String
    let headerTitleText2: String
    var body: some View {
        VStack (alignment: .leading){
             HStack{ Spacer()}
            Text(headerTitleText1)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(headerTitleText2)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 260)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(
        headerTitleText1: "Hello.", headerTitleText2: "Welcome Back")
    }
}
