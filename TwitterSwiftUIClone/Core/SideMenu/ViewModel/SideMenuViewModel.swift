//
//  SideMenuViewModel.swift
//  TwitterSwiftUIClone
//
//  Created by Linval Muchapirei on 23/3/2023.
//

import Foundation


enum SideMenuViewModel : Int,CaseIterable {
    case profile
    case lists
    case bookmarks
    case logout
    
    var title: String {
        switch self {
        case .profile:
            return "Profile"
        case .lists:
            return "Lists"
        case .logout:
            return "Logout"
        case .bookmarks:
            return "Bookmarks"
        }
    }
    var imageName: String{
        switch self {
        case .profile:
            return "person"
        case .lists:
            return "list.bullet"
        case .logout:
            return "arrow.left.square"
        case .bookmarks:
            return "bookmark"
        }
    }
}
