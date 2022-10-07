//
//  UserViewModel.swift
//  semana4
//
//  Created by MAC31 on 23/09/22.
//

import Foundation

class UserViewModel{
    
    var users:[User] = []
    
    func getUsers() -> [User] {
        return users
    }
    
    func createUser(user:User) {
        users.append(user)
    }
}
