//
//  SetMenteeAreaCategoryViewController.swift
//  EggMeetSignUpExample
//
//  Created by 이윤성 on 2021/12/31.
//

import Foundation
import UIKit

class SetMenteeAreaCategoryViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 멘티 상세 소개로 넘어가는 버튼 (액션 세그웨이)
    @IBAction func windSetMenteeAreaDescriptionView(_ sender: Any){
        self.performSegue(withIdentifier: "windSetMenteeAreaDescriptionSegue", sender: self)
    }
    
    // 스킵하고 멘티 상세 소개로 넘어가는버튼 (액션 세그웨이)
    @IBAction func skipAndWindMenteeAreaDescriptionView(_ sender: Any){
        self.performSegue(withIdentifier: "skipAndWindMenteeAreaDescriptionSegue", sender: self)
    }
    
    // 멘티 설명 뷰에서 뒤로 돌아오는 세그웨이 (메뉴얼 세그웨이)
    @IBAction func unwindSetMenteeAreaDescriptionView(_ segue: UIStoryboardSegue){
        
    }
}
