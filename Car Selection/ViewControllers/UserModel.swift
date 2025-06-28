//
//  UserModel.swift
//  Car Selection
//
//  Created by Таня Кожевникова on 27.06.2025.
//

struct User {
    let username: String
    let password: String
    
    static func getUserData() -> User {
        User(username: "Tokipak", password: "12345")
    }
}
