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
    
    @IBAction func touchUpNextButton(_ sender: Any){
        // 이동할 뷰 컨트롤러 객체 참조.
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let uvc = self.storyboard!.instantiateViewController(withIdentifier: "SecondVC")
        
        // 화면 전환 애니메이션 타입
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
        // 인자값으로 뷰 컨트롤러 인스턴스를 넣고 프레젠트 메소드 호출
        self.present(uvc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

