//
//  NotificationTableViewCell.swift
//  Icot College
//
//  Created by Rafael Krentz Gonçalves on 5/3/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

class NotificationTableViewCell: BaseTableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
//    var accessoryButton: UIButton?

    override func awakeFromNib() {
        super.awakeFromNib()
    }
        //        accessoryType = .disclosureIndicator
//        accessoryButton = subviews.compactMap { $0 as? UIButton }.first
//    }
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        accessoryButton?.frame.origin.y = 8
//        accessoryButton?.setTitleColor(.white, for: .normal)
//    }
    
}
