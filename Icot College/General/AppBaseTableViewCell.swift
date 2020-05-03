//
//  AppBaseTableViewCell.swift
//  BetinBank
//
//  Created by Rafael Krentz Gonçalves on 4/15/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

class AppBaseTableViewCell: UITableViewCell {
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    static var identifier: String {
        return String(describing: self)
    }
}
