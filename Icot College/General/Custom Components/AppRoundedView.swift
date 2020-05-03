//
//  AppRoundedView.swift
//  BetinBank
//
//  Created by Rafael Krentz Gonçalves on 4/18/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

@IBDesignable
open class AppRoundedView: UIView {
    
    @IBInspectable open var radius: CGFloat = 10 {
        didSet {
            self.layer.cornerRadius = self.radius
        }
    }
    
    @IBInspectable open var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = self.borderWidth
        }
    }
    
    @IBInspectable override open var tintColor: UIColor! {
        didSet {
            layer.borderColor = tintColor.cgColor
        }
    }
    
}
