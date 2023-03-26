//
//  TweetRowView.swift
//  TwitterSwiftUIClone
//
//  Created by Linval Muchapirei on 23/3/2023.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack (alignment: .top,spacing: 12){
                // profile picture + user info + tweet
                Circle()
                    .frame(width: 56,height: 56)
                    .foregroundColor(Color(.systemBlue))
                // user info and tweet caption
                VStack (alignment:.leading,spacing: 4){
                    // user info
                    HStack {
                        Text("Jonh Wick")
                            .font(.subheadline).bold()
                        Text("@babayaga")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    // tweet caption
                    Text("Are you ready john. Yeaaaah")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            // action buttons
            HStack {
                Button{
                    // action goes here
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                Button{
                    // action goes here
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                Button{
                    // action goes here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()
                Button{
                    // action goes here
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
                
                
            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
