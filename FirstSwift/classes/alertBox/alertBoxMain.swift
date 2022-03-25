//
//  alertBox.swift
//  FirstSwift
//
//  Created by Student on 25.03.2022.
//

import Foundation
import UIKit
let showAlert = showAlertBox()
class alertBoxMain{
    
    func showAlertBox(message: String, title: String) -> UIAlertController{
        return showAlert.showAlertMess(name: message, desc: title)
    }
}
