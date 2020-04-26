//
//  HomeViewController2.swift
//  Icot College
//
//  Created by Rafael Krentz Gonçalves on 4/26/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

class HomeViewController2: UIViewController {

    @IBOutlet weak var notificationBartButtonItem: UIBarButtonItem!
    @IBOutlet weak var collectionView: UICollectionView!
    let reuseIdentifier = "cell";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        baseInit()
    }
   
    func baseInit(){
        //set bar style
        navigationController?.navigationBar.barTintColor = UIColor.icotColor
        navigationController?.navigationBar.shouldRemoveShadow(true)
        setTitleCenter("Icot College", color: .white, withImage: UIImage(named: "icotWhiteLogo"))
        notificationBartButtonItem.tintColor = .white
       // headerSubview.backgroundColor = .clear
        setGradientBackground()
        collectionView.backgroundColor = .clear
        collectionView!.register(ItemCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    // custom function to generate a random UIColor
    func randomColor() -> UIColor{
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        if let flowLayout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.itemSize = CGSize(width: self.collectionView.bounds.width, height: 120)
        }
    }
    
}


extension HomeViewController2: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ItemCollectionViewCell
        
        cell.backgroundColor = self.randomColor()
            
            
        return cell
        
    }
}

extension HomeViewController2: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item + 1)
    }
}
