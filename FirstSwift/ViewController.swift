//
//  ViewController.swift
//  FirstSwift
//
//  Created by Student on 10.03.2022.
//

import UIKit

class ViewController: UIViewController
{

//Init objects
    
    //User(Login: <#T##String#>, Password: <#T##String#>)
    @IBOutlet weak var BtnPageRegistration: UIButton!
    @IBOutlet weak var TxbAuthLogin: UITextField!
    @IBOutlet weak var TxbAuthPassword: UITextField!
    @IBOutlet weak var BtnShowPass: UIButton!
    @IBOutlet weak var BtnHidePass: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func showAlert(name: String, desc: String)
    {
        
        let alert = UIAlertController(title: name,
                                      message: desc, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Закрыть", style: .cancel, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        
    }

    //Events

    @IBAction func BtnClickAuthorization(_ sender: UIButton) {
        
        if (TxbAuthLogin.text?.isEmpty == true || TxbAuthPassword.text?.isEmpty == true)
        {
            showAlert(name: "Авторизация", desc: "Вы заполнили не все поля.")
        }
        
        else
        {
        
        if (TxbAuthLogin.text == "123" &&
            TxbAuthPassword.text == "123")
        {
         
            showAlert(name: "Авторизация", desc: "Вы авторизированы!")
            TxbAuthLogin.text?.removeAll()
            TxbAuthPassword.text?.removeAll()
            
        }
        else
        {
            showAlert(name: "Авторизация", desc: "Логин или пароль введены неверно, поробуйте еще раз.")
            TxbAuthPassword.text?.removeAll()
            
        }
        }
    }
    
    
    @IBAction func BtnPressShowPass(_ sender: UIButton) {
        TxbAuthPassword.isSecureTextEntry = false
    }
    
    @IBAction func BtnDragEnterShowPass(_ sender: UIButton) {
    
        TxbAuthPassword.isSecureTextEntry = false
    }
    
    @IBAction func BtnPressShowPassEnd(_ sender: UIButton) {
        TxbAuthPassword.isSecureTextEntry = true
    }
    
    @IBAction func BtnDragExitShowPass(_ sender: UIButton) {
        TxbAuthPassword.isSecureTextEntry = true
    }
}

