//
//  UIView+Adds.swift
//  Icot College
//
//  Created by Rafael Krentz Gonçalves on 4/25/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

