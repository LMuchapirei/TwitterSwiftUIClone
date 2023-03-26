//
//  UserRowView.swift
//  TwitterSwiftUIClone
//
//  Created by Linval Muchapirei on 23/3/2023.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing:12) {
            Circle()
                .frame(width: 48,height: 48)
            VStack (alignment:.leading,spacing:4) {
                Text("babayaga")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                Text("John Wick")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
