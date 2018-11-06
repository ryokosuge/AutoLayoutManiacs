//
//  ViewController.swift
//  AutoLayoutManiacs
//
//  Created by RyoKosuge on 2018/11/06.
//  Copyright © 2018年 Ryo Kosuge. All rights reserved.
//

import UIKit

extension UINavigationController {

    open override var childForStatusBarStyle: UIViewController? {
        return viewControllers.first
    }

    open override var childForStatusBarHidden: UIViewController? {
        return viewControllers.first
    }

}

class ViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.backgroundColor = .clear
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        navigationItem.title = "Auto Layout Maniacs"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: nil, action: nil)
    }

}

