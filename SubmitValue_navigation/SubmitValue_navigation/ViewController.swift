//
//  ViewController.swift
//  SubmitValue_navigation
//
//  Created by EUNSUNG on 2023/02/19.
//

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
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            self.isUpdateText.text = "갱신됨"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value) 분 마다"
    }
    
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
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    
}

