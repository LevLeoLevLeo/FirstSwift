//
//  ViewController.swift
//  FirstSwift
//
//  Created by Student on 10.03.2022.
//

import UIKit

class ViewController: UIViewController
{
    //User(Login: <#T##String#>, Password: <#T##String#>)
    @IBOutlet weak var TxbShowPassword: UILabel!
    @IBOutlet weak var SwtchShowPass: UISwitch!
    @IBOutlet weak var BtnPageRegistration: UIButton!
    @IBOutlet weak var TxbAuthLogin: UITextField!
    @IBOutlet weak var TxbAuthPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func BtnClickRegistration(_ sender: UIButton) { 
    }
    
    @IBAction func BtnClickAuthorization(_ sender: UIButton) {
        
        if (TxbAuthLogin.text?.isEmpty == true || TxbAuthPassword.text?.isEmpty == true)
        {
            showAlert(name: "Авторизация", desc: "Вы заполнили не все поля.")
            SwtchShowPass.isOn = false
        }
        
        else{
        
        if (TxbAuthLogin.text == "123" &&
            TxbAuthPassword.text == "123")
            
        {
         
            showAlert(name: "Авторизация", desc: "Вы авторизированы!")
            TxbAuthLogin.text?.removeAll()
            TxbAuthPassword.text?.removeAll()
            SwtchShowPass.isOn = false
            
        }
        
        else
        {
            showAlert(name: "Авторизация", desc: "Логин или пароль введены неверно, поробуйте еще раз.")
            TxbAuthPassword.text?.removeAll()
            SwtchShowPass.isOn = false
        }
        }
    }
    
    func showAlert(name: String, desc: String)
    {
        
        let alert = UIAlertController(title: name,
                                      message: desc, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Закрыть", style: .cancel, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        
    }

    @IBAction func SwtPassword(_ sender: UISwitch) {
        if (SwtchShowPass.isOn == true)
        {
            TxbAuthPassword.isSecureTextEntry = false
            TxbShowPassword.text = "Пароль показан"
            SwtchShowPass.toolTip = "Переключите, чтобы скрыть пароль."
        }
        
        else {TxbAuthPassword.isSecureTextEntry = true
            TxbShowPassword.text = "Пароль скрыт"
            SwtchShowPass.toolTip = "Переключите, чтобы показать пароль."
        }
    }
    
}

