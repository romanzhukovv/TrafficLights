//
//  ViewController.swift
//  TrafficLights
//
//  Created by Roman Zhukov on 07.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var startButton: UIButton!
    
    enum Colors {
        case red
        case yellow
        case green
    }
    
    var currentColor: Colors = .red
    
    override func viewDidLoad() {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        yellowColorView.layer.cornerRadius = yellowColorView.layer.bounds.width / 2
        redColorView.layer.cornerRadius = redColorView.layer.bounds.width / 2
        greenColorView.layer.cornerRadius = greenColorView.layer.bounds.width / 2
    }
    
    func updateUI(color: Colors) {
        switch color {
        case .red:
            redColorView.alpha = 1
            currentColor = .yellow
        case .yellow:
            yellowColorView.alpha = 1
            currentColor = .green
        case .green:
            greenColorView.alpha = 1
            currentColor = .red
        }
    }
    
    @IBAction func pressedButton() {
        redColorView.alpha = 0.3
        yellowColorView.alpha = 0.3
        greenColorView.alpha = 0.3
        
        startButton.setTitle("NEXT", for: .normal)
        updateUI(color: currentColor)
    }

}
