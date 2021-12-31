//
//  TermsOfServiceViewController.swift
//  EggMeetSignUpExample
//
//  Created by 이윤성 on 2021/12/31.
//

import Foundation
import UIKit

class TermsOfServiceViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 악의적 콘텐츠 뷰 로 넘어가는 액션 (액션 세그웨이)
    @IBAction func windMalicioutContentView(_ sender: Any){
        print("위의 두 방침에 동의 했는지 확인하는 로직이 필요하다.")
        self.performSegue(withIdentifier: "windMalicioutContentSegue", sender: self)
    }
}

