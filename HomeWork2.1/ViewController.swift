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
    
    var currentLight: CurrentLight = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorView.layer.cornerRadius = redColorView.frame.size.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.size.width / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.size.width / 2
        startButton.layer.cornerRadius = 20
        
        redColorView.alpha = 0.4
        yellowColorView.alpha = 0.4
        greenColorView.alpha = 0.4
    }

    @IBAction func startPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            redColorView.alpha = 1
            yellowColorView.alpha = 0.4
            greenColorView.alpha = 0.4
        case .yellow:
            currentLight = .green
            yellowColorView.alpha = 1
            redColorView.alpha = 0.4
            greenColorView.alpha = 0.4
        case .green:
            currentLight = .red
            greenColorView.alpha = 1
            yellowColorView.alpha = 0.4
            redColorView.alpha = 0.4
        }
    }
    
}

