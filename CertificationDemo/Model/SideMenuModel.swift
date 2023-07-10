//
//  SideMenuModel.swift
//  CertificationDemo
//
//  Created by Surendra Mahawar on 07/07/23.
//

import Foundation

enum SideMenuModel: Int, CaseIterable {
    case Profile
    case Search
    case Like
    case Setting
    case Logout
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Search: return "Search"
        case .Like: return "Like"
        case .Setting: return "Setting"
        case .Logout: return "Logout"
        }
    }
    
    var IconImageName: String {
        switch self{
        case .Profile: return "person"
        case .Search: return "magnifyingglass"
        case .Like: return "heart"
        case .Setting: return "gear.circle"
        case .Logout: return "rectangle.portrait.and.arrow.right"
        }
    }
}
