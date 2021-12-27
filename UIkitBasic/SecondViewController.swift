//
//  SecondViewController.swift
//  UIkitBasic
//
//  Created by 이윤성 on 2021/12/28.
//

import Foundation
import UIKit

class SecondViewController: UIViewController{
    
    @IBAction func backButton(_ sender: Any){
        self.presentingViewController?.dismiss(animated: true)
    }
}
