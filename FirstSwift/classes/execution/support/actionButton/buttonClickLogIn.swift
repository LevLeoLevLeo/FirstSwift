//
//  buttonClickLogIn.swift
//  FirstSwift
//
//  Created by Student on 25.03.2022.
//

import Foundation
import UIKit
let alertBoxShow = alertBoxMain()
class buttonClickLogIn
{
    let InfoUser = User();
    var identifier = ""
    func LogIn(textfieldLogin: UITextField, textfieldPassword: UITextField, buttonLogIn: UIButton) -> UIAlertController
    {
        var alert: UIAlertController?
    if (textfieldLogin.text?.isEmpty == true || textfieldPassword.text?.isEmpty == true)
    {
        alert = alertBoxShow.showAlertBox(message: "Вы заполнили не все поля.", title: "Авторизация")
    }
    
    else
    {
        if (textfieldLogin.text == InfoUser.Login &&
            textfieldPassword.text == InfoUser.Password)
    {
            switch (InfoUser.UserRole)
            {
            case "Admin": alert = alertBoxShow.showAlertBox(message: "Авторизация", title: "Вы авторизированы как " + InfoUser.UserRole
                                    + "(администратор)!")
                self.identifier = "goToMain"
            case "User": alert = alertBoxShow.showAlertBox(message: "Авторизация", title: "Вы авторизированы как " + InfoUser.UserRole
                                    + "(пользователь)!")
                
                
            default:
                alert = alertBoxShow.showAlertBox(message: "Ошибка", title: "Поизошла ошибка, попробуйте еще раз.")
            }
        textfieldLogin.text?.removeAll()
        textfieldPassword.text?.removeAll()
    }
    else
    {
        alert = alertBoxShow.showAlertBox(message: "Авторизация", title: "Логин или пароль введены неверно, поробуйте еще раз.")
        textfieldPassword.text?.removeAll()
    }
    }
        return alert!
    }
    
    
}
