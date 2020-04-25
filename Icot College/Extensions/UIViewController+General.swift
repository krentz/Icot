//
//  UIView+General.swift
//  BetinBank
//
//  Created by Rafael Goncalves on 28/05/19.
//  Copyright © 2019 krentz. All rights reserved.
//

import UIKit

extension UIViewController {

    func hideKeyboardWhenTappedAround() {
      let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
      tap.cancelsTouchesInView = false
      view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func showButtonWithAnimation(button: UIButton){
        UIView.animate(withDuration: 0.7,
        animations: {
            button.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        },
        completion: { _ in
            UIView.animate(withDuration: 0.7) {
                button.transform = CGAffineTransform.identity
            }
        })
    }
    
    func showStoryboard(storyboardName: String, viewControllerIdentifier: String){
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier)
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(viewController, animated: true, completion: nil)
    }

    func setTitle(_ title: String, andImage image: UIImage) {
        let titleLbl = UILabel()
        titleLbl.text = title
        titleLbl.textColor = UIColor.green
       // titleLbl.font = UIFont.systemFont(
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                imageView.widthAnchor.constraint(equalToConstant: 37),
                imageView.heightAnchor.constraint(equalToConstant: 37)
        ])
        let spacer = UIView()
        let constraint = spacer.widthAnchor.constraint(greaterThanOrEqualToConstant: CGFloat.greatestFiniteMagnitude)
        constraint.isActive = true
        constraint.priority = .defaultLow
        
        imageView.contentMode = .scaleAspectFit
        let titleView = UIStackView(arrangedSubviews: [imageView, titleLbl,spacer])
        titleView.distribution = .fill
        titleView.axis = .horizontal
        titleView.spacing = 5
        titleView.translatesAutoresizingMaskIntoConstraints = false
        navigationItem.titleView = titleView
        
        let navigationBarTitleView = titleView
        navigationBarTitleView.translatesAutoresizingMaskIntoConstraints = false
        navigationItem.titleView = navigationBarTitleView

        if let navigationBar = navigationController?.navigationBar {
            NSLayoutConstraint.activate([
                        titleView.leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor, constant: 10),
                        titleView.heightAnchor.constraint(equalToConstant: 50)
                   ])
               }
    }
    
    func setTitleCenter(_ title: String, color: UIColor, withImage image: UIImage?) {
        let titleLbl = UILabel()
        titleLbl.text = title
        titleLbl.textColor = color
        titleLbl.font = UIFont.systemFont(ofSize: 20.0, weight: .bold)
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                imageView.widthAnchor.constraint(equalToConstant: 37),
                imageView.heightAnchor.constraint(equalToConstant: 37)
        ])
        let titleView = UIStackView(arrangedSubviews: [imageView,titleLbl])
        titleView.axis = .horizontal
        titleView.spacing = 10.0
        navigationItem.titleView = titleView
    }
     
    
    func setTitleCenterWithoutImage(_ title: String, color: UIColor) {
        let titleLbl = UILabel()
        titleLbl.text = title
        titleLbl.textColor = color
        titleLbl.font = UIFont.systemFont(ofSize: 20.0, weight: .bold)
        
        let titleView = UIStackView(arrangedSubviews: [titleLbl])
        titleView.axis = .horizontal
        titleView.spacing = 10.0
        navigationItem.titleView = titleView
    }
    
    func setTitleLeft(_ title: String, color: UIColor, andImage image: UIImage) {
           let titleLbl = UILabel()
           titleLbl.text = title
            titleLbl.textColor = color
           let imageView = UIImageView(image: image)
           imageView.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
                   imageView.widthAnchor.constraint(equalToConstant: 37),
                   imageView.heightAnchor.constraint(equalToConstant: 37)
           ])
           let spacer = UIView()
           let constraint = spacer.widthAnchor.constraint(greaterThanOrEqualToConstant: CGFloat.greatestFiniteMagnitude)
           constraint.isActive = true
           constraint.priority = .defaultLow
           
           imageView.contentMode = .scaleAspectFit
           let titleView = UIStackView(arrangedSubviews: [imageView, titleLbl,spacer])
           titleView.distribution = .fill
           titleView.axis = .horizontal
           titleView.spacing = 5
           titleView.translatesAutoresizingMaskIntoConstraints = false
           navigationItem.titleView = titleView
           
           let navigationBarTitleView = titleView
           navigationBarTitleView.translatesAutoresizingMaskIntoConstraints = false
           navigationItem.titleView = navigationBarTitleView

           if let navigationBar = navigationController?.navigationBar {
               NSLayoutConstraint.activate([
                           titleView.leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor, constant: 10),
                           titleView.heightAnchor.constraint(equalToConstant: 50)
                      ])
                  }
       }
    func setGradientBackground() {
        let colorTop =  UIColor.icotColor.cgColor
        let colorBottom = UIColor.icotLight.cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds

        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
}
