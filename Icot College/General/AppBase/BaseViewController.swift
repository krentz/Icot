//
//  BaseViewController.swift
//  Icot College
//
//  Created by Rafael Krentz Gonçalves on 4/30/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor.icotColor
        navigationController?.navigationBar.shouldRemoveShadow(true)
        navigationController?.navigationBar.topItem?.title = ""
        navigationController?.navigationBar.tintColor = UIColor.white
        
        setTitleCenter("Icot College", color: .white, withImage: UIImage(named: "icotWhiteLogo"))
        setGradientBackground()
    }
   
}
