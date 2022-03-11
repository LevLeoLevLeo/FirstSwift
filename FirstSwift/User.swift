//
//  User.swift
//  FirstSwift
//
//  Created by Student on 11.03.2022.
//

import Foundation
class User
{
    let Login : String
    let Password : String
    var Role = ["Administrator", "User"]
    init (Login : String, Password : String) {self.Login = Login
        self.Password = Password}
}
