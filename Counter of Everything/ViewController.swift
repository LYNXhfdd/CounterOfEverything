//
//  ViewController.swift
//  Counter of Everything
//
//  Created by Sergey Fogel on 11.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterNumber: UILabel!
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        count += 1
        counterNumber.text = String(count)
    }
}

