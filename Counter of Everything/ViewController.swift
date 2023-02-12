import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var counterNumber: UILabel!
    
    private var count = 0
    
    @IBAction private func buttonTapped(_ sender: Any) {
        count += 1
        counterNumber.text = String(count)
    }
}

