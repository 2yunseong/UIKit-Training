//
//  ViewController.swift
//  IBTest
//
//  Created by 이윤성 on 2021/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiTitle01: UILabel!
    @IBOutlet var uiTitle02: UILabel!
    @IBOutlet var uiTitle03: UILabel!
    @IBOutlet var uiTitle04: UILabel!
    @IBOutlet var uiTitle05: UILabel!
    
    @IBAction func clickBtn01(_ sender: Any) {
        self.uiTitle01.text = "Label 01 clicked"
    }
    
    @IBAction func clickBtn02(_ sender: Any) {
        self.uiTitle02.text = "Label 02 clicked"
    }
    
    @IBAction func clickBtn03(_ sender: Any) {
        self.uiTitle03.text = "Label 03 clicked"
    }
    
    @IBAction func clickBtn04(_ sender: Any) {
        self.uiTitle04.text = "Label 04 clicked"
    }
    
    @IBAction func clickBtn05(_ sender: Any) {
        self.uiTitle05.text = "Label 05 clicked"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

