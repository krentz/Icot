//
//  AppButton.swift
//  BetinBank
//
//  Created by Rafael Krentz Gonçalves on 4/4/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

@IBDesignable
class AppButton: UIButton {

    //this init fires usually called, when storyboards UI objects created:
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupViews()
    }

    //This method is called during programmatic initialisation
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }


    func setupViews() {
        //default button
        layer.shadowColor = UIColor.icotColor2.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = .zero
        layer.shadowRadius = 1
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)
        layer.backgroundColor = UIColor.icotColor2.cgColor
        titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
        
        //border
        //shadow
        //vazado leaked
    //    button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }

    //required method to present changes in IB
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupViews()
    }
    
    @IBInspectable var fillColor: UIColor = .icotColor2 {
        didSet {
            self.layer.backgroundColor = fillColor.cgColor
        }
    }
    @IBInspectable var isHollowButton: Bool = false {
        didSet {
            if isHollowButton {
                self.layer.backgroundColor = UIColor.clear.cgColor
                self.layer.borderColor = fillColor.cgColor
            }
        }
    }
    @IBInspectable open var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = self.borderWidth
        }
    }
    @IBInspectable open var borderColor: UIColor = UIColor.icotColor2 {
           didSet {
            self.layer.borderColor = borderColor.cgColor
           }
       }
}

//@IBDesignable
//class AppButton: UIButton {
//
//    @IBOutlet weak var button: UIButton!
//    var onTap: (() -> ())?
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        baseInit()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        baseInit()
//    }
//
//    func baseInit() {
//
//        //default button
//        self.button.layer.shadowColor = UIColor.betinButton.cgColor
//        self.button.layer.shadowOpacity = 0.2
//        self.button.layer.shadowOffset = .zero
//        self.button.layer.shadowRadius = 1
//        self.button.layer.cornerRadius = 10
//
//        //border
//        //shadow
//        //vazado leaked
//        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
//    }
//
//    @objc func tapButton() {
//        onTap?()
//    }
//
//    @IBInspectable var title: String = "Default" {
//        didSet {
//            self.button.setTitle(title, for: .normal)
//        }
//    }
//}
