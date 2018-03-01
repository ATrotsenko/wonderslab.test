//
//  UIViewController+Extension.swift
//  WonderslabTest
//
//  Created by Alexey Trotsenko on 01.03.2018.
//  Copyright © 2018 Alexey Trotsenko. All rights reserved.
//

import UIKit

extension UIViewController {
    
   static func current() -> UIViewController {
        let name = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: name)
    }
}
