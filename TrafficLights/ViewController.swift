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
    @IBOutlet var trafficLightStakView: UIStackView!
    
    override func viewDidLoad() {
        yellowColorView.layer.cornerRadius = yellowColorView.layer.bounds.width/2
        redColorView.layer.cornerRadius = redColorView.layer.bounds.width/2
        greenColorView.layer.cornerRadius = greenColorView.layer.bounds.width/2
    }

    @IBAction func pressedButton() {
    }
    
}

