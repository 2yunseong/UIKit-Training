//
//  ViewController.swift
//  UIkitBasic
//
//  Created by 이윤성 on 2021/12/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiTitle: UILabel!
    
    @IBAction func touchUpButton(_ sender: Any) {
        self.uiTitle.text = "Hello World!"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

