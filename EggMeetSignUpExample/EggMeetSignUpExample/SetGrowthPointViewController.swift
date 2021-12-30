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
    
    // 성장포인트 설명란으로 넘어가는 액션 ( 액션 세그웨이)
    @IBAction func windExplainGrowPointView(_ sender: Any) {
        self.performSegue(withIdentifier: "windExplainGrowPointSegue", sender: self)
    }
    
    @IBAction func unwindToExplainGrowPointView(_ segue: UIStoryboardSegue){
        
    }
}
