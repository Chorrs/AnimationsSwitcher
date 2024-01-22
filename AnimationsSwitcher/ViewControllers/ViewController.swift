//
//  ViewController.swift
//  AnimationsSwitcher
//
//  Created by Chorrs on 20.01.24.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView! {
        didSet {
            animationView.layer.cornerRadius = min(animationView.frame.size.width, animationView.frame.size.height) / 2.0
        }
    }
    @IBOutlet weak var animationLabel: SpringLabel! {
        didSet {
            animationLabel.text = animation.description
            animationLabel.textColor = .systemBlue
            animationLabel.clipsToBounds = true
        }
    }
    
    private var animation = Animation.randomAnimation

   
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        
        animationLabel.animation = "zoomOut"
        animationLabel.x = 50
        animationLabel.animate()
        animationLabel.text = animation.description
        
        animationLabel.animateNext { [unowned self] in
            animationLabel.animation = "zoomIn"
            animationLabel.animate()
            
            animationView.animation = animation.name
            animationView.curve = animation.curve
            animationView.duration = animation.duration
            animationView.force = animation.force
            animationView.delay = animation.delay
            animationView.animate()
            
            animation = Animation.randomAnimation
            sender.setTitle("Run \(animation.name)", for: .normal)
            
        }
    }
}

