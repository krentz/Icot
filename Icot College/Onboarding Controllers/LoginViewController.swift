//
//  LoginViewController.swift
//  Icot College
//
//  Created by Rafael Krentz Gonçalves on 4/30/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    @IBOutlet weak var loginStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginAfter(_ sender: Any) {
        showStoryboard(storyboardName: "Main", viewControllerIdentifier: "icotHome")
    }
    @IBAction func loginNow(_ sender: Any) {
        loginStackView.isHidden = false
    }
}
