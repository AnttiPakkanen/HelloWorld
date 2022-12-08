//
//  ViewController.swift
//  HelloWorld
//
//  Created by автосалон on 06.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    @IBOutlet var greetingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden.toggle()
        greetingButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    @IBAction func greetingButtonDidTupped() {
        greetingLabel.isHidden.toggle()
        greetingButton.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
            for: .normal
        )
       
    }
    
}

