//
//  CollectionViewCell.swift
//  CollectionViewWithXIB
//
//  Created by Mac on 17/01/25.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet var imgView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

}
