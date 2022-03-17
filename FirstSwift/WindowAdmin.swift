//
//  WindowAdmin.swift
//  FirstSwift
//
//  Created by wsr3 on 17.03.2022.
//

import UIKit

class WindowAdmin: UIViewController {

    @IBOutlet weak var LblHelloMessage: UILabel!
    let infoUser = User()
    override func viewDidLoad() {
        super.viewDidLoad()
        LblHelloMessage.text = "Добрый день, " + infoUser.UserRole + "!"
        // Do any additional setup after loading the view.
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
