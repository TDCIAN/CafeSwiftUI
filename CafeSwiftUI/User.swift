//
//  User.swift
//  CafeSwiftUI
//
//  Created by JeongminKim on 2022/01/13.
//

import Foundation

struct User {
    let username: String
    let account: String
    
    static let shared = User(username: "김잼민", account: "jmkim.tdcian")
}
