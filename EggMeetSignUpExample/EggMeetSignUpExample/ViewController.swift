//
//  ViewController.swift
//  EggMeetSignUpExample
//
//  Created by 이윤성 on 2021/12/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 성장포인트 책정으로 넘어가는 버튼 (액션 세그웨이)
    @IBAction func windSetGrowthPointView(_ sender: Any) {
        self.performSegue(withIdentifier: "windSetGrowthPointSegue", sender: self)
    }
    
    // 스킵 하고 다음 과정으로 넘어가는 버튼 (액션 세그웨이)
    @IBAction func skipAndWindSetGrowthPointView(_ sender: Any){
        print("멘토 경력을 빈 문자열로 전달한다.")
        self.performSegue(withIdentifier: "skipAndWindSetGrowthPointSegue", sender: self)
    }
    
    // 성장포인트 책정 페이지에서 뒤로가는 버튼 (메뉴얼 세그웨이)
    @IBAction func unwindToSetGrowthPointView(_ segue: UIStoryboardSegue){
        print("unwind")
        
    }
    
}

