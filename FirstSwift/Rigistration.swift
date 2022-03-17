//
//  Rigistration.swift
//  FirstSwift
//
//  Created by Student on 11.03.2022.
//

import UIKit

class Rigistration: UIViewController {
    
    @IBOutlet weak var TxbNewLogin: UITextField!
    @IBOutlet weak var TxbNewPassword: UITextField!
    @IBOutlet weak var TxbRepeatPassword: UITextField!
    @IBOutlet weak var BtnRegistration: UIButton!
    @IBOutlet weak var BtnPageAuthorization: UIButton!
    @IBOutlet weak var LblRepeatPassword: UILabel!
    @IBOutlet weak var BtnShowPass: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func TxbActRepeatPassword(_ sender: UITextField) {
        if (TxbRepeatPassword.text == TxbNewPassword.text || TxbRepeatPassword.text?.isEmpty == true)
        {
            LblRepeatPassword.isHidden = true
        }
        else {
            LblRepeatPassword.isHidden = false
        }
    }
    
    @IBAction func BtnActnAuth(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func BtnPressShowPass(_ sender: UIButton) {
        BtnShowPass.setImage(UIImage(systemName: "eye"), for: .normal)
        TxbNewPassword.isSecureTextEntry = false
    }
    
    @IBAction func BtnPressDragEnterShowPass(_ sender: UIButton) {
        BtnShowPass.setImage(UIImage(systemName: "eye"), for: .normal)
        TxbNewPassword.isSecureTextEntry = false
    }
    
    
    @IBAction func BtnPressShowPassEnd(_ sender: UIButton) {
        BtnShowPass.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        TxbNewPassword.isSecureTextEntry = true
    }
    
    
    @IBAction func BtnPressDragExitShowPass(_ sender: UIButton) {
        BtnShowPass.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        TxbNewPassword.isSecureTextEntry = true
    }
    
    
    @IBAction func BtnRegistrationNewUser_ActnClick(_ sender: UIButton) {
        
    }
    
}
