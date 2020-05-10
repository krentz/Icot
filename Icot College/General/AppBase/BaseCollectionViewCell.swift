//
//  BaseCollectionViewCell.swift
//  Icot College
//
//  Created by Rafael Krentz Gonçalves on 5/9/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    static var identifier: String {
        return String(describing: self)
    }
}
