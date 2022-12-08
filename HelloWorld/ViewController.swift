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
        greetingButton.configuration = setupButton(with: "Show Greeting")
        // Do any additional setup after loading the view.
    }

    @IBAction func greetingButtonDidTupped() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
        )
       
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
    
}

