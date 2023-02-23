import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var counterNumber: UILabel!
    
    private var count = 0
    
    private let firstAttribute: [NSAttributedString.Key: Any] = [.font: UIFont(name: "Arial", size: 24.0)! ]
    private let secondAttribute: [NSAttributedString.Key: Any] = [.font: UIFont(name: "Arial", size: 140.0)! ]
    
    private func attributedLabel() {
        let firstString = NSMutableAttributedString(string: "Текущее значение: \n", attributes: firstAttribute)
        let secondString = NSAttributedString(string: "\(count)", attributes: secondAttribute)
        firstString.append(secondString)
       counterNumber.attributedText = firstString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        attributedLabel()
    }


    @IBAction private func buttonTapped(_ sender: Any) {
        count += 1
        attributedLabel()
    }

    @IBAction private func ResetButton(_ sender: Any) {
        count = 0
        attributedLabel()
    }
        
}

