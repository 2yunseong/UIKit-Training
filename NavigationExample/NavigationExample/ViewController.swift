//
//  ViewController.swift
//  NavigationExample
//
//  Created by 이윤성 on 2021/12/28.
//

import UIKit

class ViewController: UIViewController {

  
    @IBAction func moveByNavi(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else{
            return
        }
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}

