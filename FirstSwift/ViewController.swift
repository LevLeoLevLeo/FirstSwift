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
    
    let execute = executeAction();
    @IBOutlet weak var buttonLogIn: UIButton!
    @IBOutlet weak var BtnPageRegistration: UIButton!
    @IBOutlet weak var TxbAuthLogin: UITextField!
    @IBOutlet weak var TxbAuthPassword: UITextField!
    @IBOutlet weak var BtnShowPass: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //Events

    @IBAction func BtnClickAuthorization(_ sender: UIButton) {
        
        var alert = execute.logIn(textFieldLogin: TxbAuthLogin, textFieldPassword: TxbAuthPassword, buttonLogIn: buttonLogIn)
        performSegue(withIdentifier: "goToMain", sender: self)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func BtnPressShowPass(_ sender: UIButton) {
        BtnShowPass.setImage(UIImage(systemName: "eye"), for: .normal)
        TxbAuthPassword.isSecureTextEntry = false
    
    }
    
    @IBAction func BtnDragEnterShowPass(_ sender: UIButton) {
        BtnShowPass.setImage(UIImage(systemName: "eye"), for: .normal)
        TxbAuthPassword.isSecureTextEntry = false
    }
    
    @IBAction func BtnPressShowPassEnd(_ sender: UIButton) {
        BtnShowPass.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        TxbAuthPassword.isSecureTextEntry = true
    }
    
    @IBAction func BtnDragExitShowPass(_ sender: UIButton) {
        BtnShowPass.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        TxbAuthPassword.isSecureTextEntry = true
    }
}

