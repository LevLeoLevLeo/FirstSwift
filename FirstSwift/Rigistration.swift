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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func TxbActRepeatPassword(_ sender: UITextField) {
        if (TxbRepeatPassword.text != TxbNewPassword.text)
        {
            LblRepeatPassword.isHidden = false
        }
        else {
            LblRepeatPassword.isHidden = true
        }
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
