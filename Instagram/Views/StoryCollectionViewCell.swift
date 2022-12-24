//
//  StoryCollectionViewCell.swift
//  Instagram
//
//  Created by Carrington Tafadzwa Manyuchi on 2022/12/23.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var storyImage: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        storyImage.layer.cornerRadius = storyImage.frame.width / 2
        
        storyImage.layer.masksToBounds = true
        
        storyImage.layer.borderColor = UIColor.white.cgColor
        
        storyImage.layer.borderWidth = CGFloat(3.3)
        
    }

}
