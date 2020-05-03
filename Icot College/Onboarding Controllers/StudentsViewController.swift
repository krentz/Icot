//
//  StudentsViewController.swift
//  Icot College
//
//  Created by Rafael Krentz Gonçalves on 5/3/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

class StudentsViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goAppHome(_ sender: Any) {
        showStoryboard(storyboardName: "Main", viewControllerIdentifier: "icotHome")
    }
}
