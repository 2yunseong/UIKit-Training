//
//  SetMenteeAreaDescriptionViewController.swift
//  EggMeetSignUpExample
//
//  Created by 이윤성 on 2021/12/31.
//

import Foundation
import UIKit

class SetMenteeAreaDescriptionViewController : UIViewController {
    
    @IBOutlet weak var menteeAreaDescription :UITextField!
    let ud = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 스킵하고 만남 채널 선택으로 넘어가는 액션 (액션 세그웨이)
    @IBAction func skipAndWindSetChannelView(_ sender: Any){
        ud.set("", forKey: "menteeAreaDescription")
        self.performSegue(withIdentifier: "skipAndWindSetChannelSegue", sender: self)
    }
    
    // 만남 채널 선택으로 넘어가는 액션 (액션 세그웨이)
    @IBAction func windSetChannelView(_ sender: Any){
        ud.set(self.menteeAreaDescription.text, forKey: "menteeAreaDescription")
        self.performSegue(withIdentifier: "windSetChannelSegue", sender: self)
    }
    
    @IBAction func unwindSetChannelView(_ segue: UIStoryboardSegue){
        
    }
    
    
}
