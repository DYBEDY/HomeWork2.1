//
//  ViewController.swift
//  HomeWork2.1
//
//  Created by Roman on 07.12.2021.
//

import UIKit

enum CurrentLight {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    
    let lightIsOn: CGFloat = 1
    let lightIsOff: CGFloat = 0.3
    
    var currentLight: CurrentLight = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorView.layer.cornerRadius = redColorView.frame.size.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.size.width / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.size.width / 2
        startButton.layer.cornerRadius = 20
        
        redColorView.alpha = lightIsOff
        yellowColorView.alpha = lightIsOff
        greenColorView.alpha = lightIsOff
        
    }

    @IBAction func startPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            redColorView.alpha = lightIsOn
            greenColorView.alpha = lightIsOff
        case .yellow:
            currentLight = .green
            yellowColorView.alpha = lightIsOn
            redColorView.alpha = lightIsOff
        case .green:
            currentLight = .red
            greenColorView.alpha = lightIsOn
            yellowColorView.alpha = lightIsOff
            
        }
    }
    
}

