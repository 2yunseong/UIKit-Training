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

    @IBAction func windSetGrowthPointView(_ sender: Any) {
        self.performSegue(withIdentifier: "windSetGrowthPointView", sender: self)
    }
    
    // unwind가 될 때 실행 된다
    @IBAction func unwindToSetGrowthPointView(_ segue: UIStoryboardSegue){
        print("unwind")
        
    }
    
}

