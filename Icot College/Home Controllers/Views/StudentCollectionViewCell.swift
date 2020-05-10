//
//  StudentCollectionViewCell.swift
//  Icot College
//
//  Created by Rafael Krentz Gonçalves on 5/9/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

class StudentCollectionViewCell: BaseCollectionViewCell {
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var brandName: UILabel!
    @IBOutlet weak var productTypeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        productImageView.image = UIImage(named: "mainIcon")
    }
    
    func setupCellItem(student: StudentMenuItem) {
        brandName.text = student.title
      //  productTypeLabel.text = student.image
    }

}

