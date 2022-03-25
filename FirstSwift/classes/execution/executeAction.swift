//
//  executeAction.swift
//  FirstSwift
//
//  Created by Student on 25.03.2022.
//

import Foundation
import SwiftUI
class executeAction{
    let actionLogIn = buttonClickLogIn();
    
    func logIn(textFieldLogin: UITextField, textFieldPassword: UITextField, buttonLogIn: UIButton) -> UIAlertController{
        
        return actionLogIn.LogIn(textfieldLogin: textFieldLogin, textfieldPassword: textFieldPassword, buttonLogIn: buttonLogIn)
        
    }
    
}
