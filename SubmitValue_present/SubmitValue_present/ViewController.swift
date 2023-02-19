//
//  ViewController.swift
//  SubmitValue_present
//
//  Created by EUNSUNG on 2023/02/16.
//

// finish

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var email: UITextField!
    
    @IBOutlet var isUpdate: UISwitch!
    
    @IBOutlet var interval: UIStepper!
    
    @IBOutlet var isUpdateText: UILabel!
    
    @IBOutlet var intervalText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 지동 갱신 여부가 바뀔 때마다 호출되는 메소드
    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            self.isUpdateText.text = "갱신됨"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    // 갱신주기가 바뀔 때마다 호출되는 메소드
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value) 분 마다"
    }
    
    // Submit버튼 클릭시 호출
    @IBAction func onSubmit(_ sender: Any) {
        // VC2 인스턴스 생성 / VC2의 storyboard ID : RVC
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
        }
        // 값 전달
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramIntervar = self.interval.value
        
        // 화면 이동
        self.present(rvc, animated: true)
    }
}

