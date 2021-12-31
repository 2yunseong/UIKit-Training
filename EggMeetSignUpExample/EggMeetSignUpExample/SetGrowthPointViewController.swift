//
//  SetGrowthPointViewController.swift
//  EggMeetSignUpExample
//
//  Created by 이윤성 on 2021/12/29.
//

import Foundation
import UIKit

class SetGrowthPointViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 성장포인트 설명란으로 넘어가는 버튼 (액션 세그웨이)
    @IBAction func windExplainGrowPointView(_ sender: Any) {
        self.performSegue(withIdentifier: "windExplainGrowPointSegue", sender: self)
    }
    
    // 멘티 분야 설정으로 넘어가는 버튼 (액션 세그웨이)
    @IBAction func windSetMenteeAreaCategoryView(_ sender: Any){
        self.performSegue(withIdentifier: "windSetMenteeAreaCategorySegue", sender: self)
    }
    
    // 성장포인트 설정을 스킵하고, 멘티 분야 설정으로 넘어가는 버튼 (액션 세그웨이)
    @IBAction func skipAndWindSetMenteeAreaCategoryView(_ sender: Any){
        print("성장비용 정하기가 건너뛰기가 됨. 이 때의 기본값 어떻게 할것인지")
        self.performSegue(withIdentifier: "skipAndWindSetMenteeAreaCategorySegue", sender: self)
    }
    
    // 성장포인트 설명란에서 뒤로가는 버튼(메뉴얼 세그웨이)
    @IBAction func unwindToExplainGrowPointView(_ segue: UIStoryboardSegue){
        
    }
    
    // 멘티 분야 선택 뷰에서 뒤로가는 버튼(메뉴얼 세그웨이)
    @IBAction func unwindSetMenteeAreaCategoryView(_ segue: UIStoryboardSegue){
        
    }
}
