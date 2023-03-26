//
//  ExploreView.swift
//  TwitterSwiftUIClone
//
//  Created by Linval Muchapirei on 23/3/2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView{
            VStack {
                ScrollView{
                    LazyVStack {
                        ForEach(0...25,id:\.self){_ in
                            NavigationLink{
                                ProfileView()
                            }label: {
                                UserRowView()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
