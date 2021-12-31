//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by 이윤성 on 2021/12/30.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    var paramEmail: String = ""
    var paramUpdate: Bool = false
    var paramInterval: Double = 0
    
    
    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "On" : "Off")
        self.resultInterval.text = "\(Int(paramInterval)) 분마다 갱신."
    }
    
}
