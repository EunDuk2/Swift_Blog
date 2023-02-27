//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by EUNSUNG on 2023/02/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblEmail: UILabel!
    
    @IBOutlet var lblIsOn: UILabel!
    
    @IBOutlet var lblInterval: UILabel!
    
    var paramEmail: String?
    var paramUpdate: Bool?
    var paramInterval: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let email = paramEmail {
            lblEmail.text = email
        }
        if let update = paramUpdate {
            lblIsOn.text = update == true ? "자동갱신" : "자동갱신안함"
        }
        if let interval = paramInterval {
            lblInterval.text = "\(Int(interval)) 분 마다"
        }
    }

}

