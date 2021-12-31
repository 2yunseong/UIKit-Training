//
//  MaliciousContentViewController.swift
//  EggMeetSignUpExample
//
//  Created by 이윤성 on 2021/12/31.
//

import Foundation
import UIKit

class MaliciousContentViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func touchUpAgreeButton(_ sender: Any){
        self.performSegue(withIdentifier: "RestrictMaliciousContentSegue", sender: self)
    }
    
}
