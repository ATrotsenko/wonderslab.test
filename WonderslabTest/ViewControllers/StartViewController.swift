//
//  StartViewController.swift
//  WonderslabTest
//
//  Created by Alexey Trotsenko on 01.03.2018.
//  Copyright © 2018 Alexey Trotsenko. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
    }


    // MARK: - Private
    private func setGradientBackground() {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [Constants.Colors.topColor.cgColor,
                                Constants.Colors.bottomColor.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, below: nil)
    }
}

