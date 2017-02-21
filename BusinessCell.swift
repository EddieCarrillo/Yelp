//
//  BusinessCell.swift
//  Yelp
//
//  Created by my mac on 2/14/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var reviewCountLabel: UILabel!
    
    var business : Business!{
         didSet{
             nameLabel.text = business.name
             posterView.setImageWith(business.imageURL!)
             foodLabel.text = business.categories
             reviewCountLabel.text = "\(business.reviewCount!)"
             ratingImageView.setImageWith(business.ratingImageURL!)
             distanceLabel.text = business.distance
            addressLabel.text = business.address
         }
     }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        posterView.layer.cornerRadius = 3
        posterView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
