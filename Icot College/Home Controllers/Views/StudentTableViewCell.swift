//
//  StudentTableViewCell.swift
//  Icot College
//
//  Created by Rafael Krentz Gonçalves on 5/9/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

protocol StudentTableViewCellDelegate: class {
    func studentTableViewCell(_ cell: StudentTableViewCell, didTap item: StudentMenuItem)
}

class StudentTableViewCell: BaseTableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    weak var delegate : StudentTableViewCellDelegate?
    var studentList: [StudentMenuItem]? {
        didSet {
            collectionView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(StudentCollectionViewCell.nib, forCellWithReuseIdentifier: StudentCollectionViewCell.identifier)
        
    }
}

extension StudentTableViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        studentList?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StudentCollectionViewCell.identifier, for: indexPath) as! StudentCollectionViewCell
        let student = studentList?[indexPath.item]
        cell.setupCellItem(student: student ?? StudentMenuItem(title: "teste", image: "teste"))
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 152, height: 216)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let makeup = studentList?[indexPath.item] else {
            return
        }
        delegate?.studentTableViewCell(self, didTap: makeup)

    }
    
}
