//
//  showAlertBox.swift
//  FirstSwift
//
//  Created by Student on 25.03.2022.
//

import Foundation
import UIKit
class showAlertBox{
    
    func showAlertMess(name: String, desc: String) -> UIAlertController
    {
        let alert = UIAlertController(title: name,
                                      message: desc, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Закрыть", style: .cancel, handler: nil)
        alert.addAction(cancel)
        return alert
    }
}
