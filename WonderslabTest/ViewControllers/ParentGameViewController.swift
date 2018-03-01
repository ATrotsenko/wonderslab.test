//
//  ParentGameViewController.swift
//  WonderslabTest
//
//  Created by Alexey Trotsenko on 01.03.2018.
//  Copyright © 2018 Alexey Trotsenko. All rights reserved.
//

import UIKit

class ParentGameViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var explanationButton: UIButton!
    
    private lazy var gameViewController = GameViewController.current()
    private lazy var expalanationViewController = ExplanationViewController.current()

    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        headerView.backgroundColor = Constants.Colors.topColor
        self.add(asChildViewController: gameViewController)
        self.add(asChildViewController: expalanationViewController)
        updateView(playButton)
    }
    
    // MARK: - IBAction
    @IBAction func headeButtonsAction(_ sender: UIButton) {
        updateView(sender)
    }
    
    // MARK: - Private
    private func add(asChildViewController viewController: UIViewController) {
        addChildViewController(viewController)
        viewController.view.frame = containerView.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        containerView.addSubview(viewController.view)
        viewController.didMove(toParentViewController: self)
    }

    private func remove(asChildViewController viewController: UIViewController) {
        viewController.willMove(toParentViewController: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParentViewController()
    }
    
    private func updateView(_ button: UIButton) {
        if button == playButton {
            playButton.alpha = 1
            explanationButton.alpha = 0.5
            remove(asChildViewController: expalanationViewController)
            add(asChildViewController: gameViewController)
        } else {
            playButton.alpha = 0.5
            explanationButton.alpha = 1
            remove(asChildViewController: gameViewController)
            add(asChildViewController: expalanationViewController)
        }
    }
}
