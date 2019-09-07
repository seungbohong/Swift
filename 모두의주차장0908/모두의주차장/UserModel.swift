//
//  UserModel.swift
//  모두의주차장
//
//  Created by 홍승보 on 07/09/2019.
//  Copyright © 2019 hsb. All rights reserved.
//

import Foundation
final class UserModel {
    
    struct User {
        var username: String
        var password: String
    }
    
    var model: [User] = [
        User(username: "zico", password: "1234"),
        User(username: "dean", password: "5678"),
        User(username: "penomeco", password: "0101")
    ]
    
    // hasUser 검사 method
    func hasUser(name: String, pwd: String) -> Bool {
        for user in model {
            if user.username == name && user.password == pwd {
                return true
            }
            return false
        }
    }
    
    // newUser 추가 method
    func addUser(name: String, pwd: String) {
        let newUser = User(username: name, password: pwd)
        model.append(newUser)
    }
    
}
