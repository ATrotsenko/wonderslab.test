//
//  BaseViewController.swift
//  WonderslabTest
//
//  Created by Alexey Trotsenko on 01.03.2018.
//  Copyright © 2018 Alexey Trotsenko. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    //MARK: - Keyboard settings
    func registerViewToHideKeyboard(_ view: UIView) {
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboard)))
    }
    
    @objc private func hideKeyboard() {
        self.view.endEditing(true)
    }

}
