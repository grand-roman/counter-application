//
//  ViewController.swift
//  counter-application
//
//  Created by Роман Андреев on 25.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var numb: Int = 0
    @IBOutlet weak var numberСounter: UILabel!
    @IBOutlet weak var incrementButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        numberСounter.text = "Значение счётчика:\n \(numb)"
        
    }

    @IBAction func buttonDidTap(_ sender: UIButton) {
        if sender.backgroundColor == .link {
            sender.backgroundColor = .systemCyan
        }
        else if sender.backgroundColor == .systemCyan {
            sender.backgroundColor = .link
        }
        self.numb += 1
        if self.numb >= 100 {
            numberСounter.textColor = .red
        }
        numberСounter.text = "Значение счётчика:\n \(numb)"
        
    }
    
}
