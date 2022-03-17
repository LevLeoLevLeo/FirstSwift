//
//  User.swift
//  FirstSwift
//
//  Created by Student on 11.03.2022.
//

import Foundation
import SwiftUI
class User
{
    var Login : String
    var Password : String
    var UserRole : String = "Admin"
    var Role = ["Admin", "User"]
    
    init(Login: String = "123", Password: String = "123"){
             
            self.Login = Login
            self.Password = Password
        }
}
