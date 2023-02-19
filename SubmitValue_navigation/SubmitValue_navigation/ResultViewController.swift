import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultEmail: UILabel!
    
    @IBOutlet var resultUpdate: UILabel!
    
    @IBOutlet var resultInterval: UILabel!
    
    var paramEmail : String = ""
    var paramUpdate : Bool = false
    var paramIntervar : Double = 0
    
    override func viewDidLoad() {
        // 전달 받은 값을 각 레이블에 출력
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신 안함")
        self.resultInterval.text = "\(Int(paramIntervar)) 분 마다"
    }
}

