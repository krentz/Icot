//
//  ViewController.swift
//  Icot College
//
//  Created by Rafael Krentz Gonçalves on 4/25/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    @IBOutlet weak var notificationBartButtonItem: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var headerSubview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        baseInit()
    }
    
    func baseInit(){
        
        //set bar style
        notificationBartButtonItem.tintColor = .white
        headerSubview.backgroundColor = .clear
        tableView.backgroundColor = .clear
        
//        setTitleCenterWithoutImage("Icot College", color: .icotColor)
//        notificationBartButtonItem.tintColor = .icotColor
//        tableView.backgroundColor = .icotColor
//        headerView.backgroundColor = .clear
        
       
       // headerSubview.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 20)
        
    }

}

