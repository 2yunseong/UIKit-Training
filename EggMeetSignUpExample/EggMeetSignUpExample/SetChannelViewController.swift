//
//  SetChannelViewController.swift
//  EggMeetSignUpExample
//
//  Created by 이윤성 on 2021/12/31.
//

import Foundation
import UIKit

class SetChannelViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 서비스 이용약관 뷰로 이동하는 액션 (액션 세그웨이)
    @IBAction func windTermsOfServiceView(_ sender: Any){
        self.performSegue(withIdentifier: "windTermsOfServiceSegue", sender: self)
    }
    
    // 스킵하고 서비스 이용약관 뷰로 이동하는 액션 (액션 세그웨이)
    @IBAction func skipAndWindTermsOfServiceView(_ sender: Any){
        self.performSegue(withIdentifier: "skipAndWindTermsOfServiceSegue", sender: self)
    }
}
