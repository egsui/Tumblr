//
//  PostsTableViewCell.swift
//  ios101-project5-tumblr
//
//  Created by Yujing Wei on 4/2/25.
//

import UIKit

class PostsTableViewCell: UITableViewCell {
    @IBOutlet weak var PostImageView: UIImageView!
    @IBOutlet weak var PostSummaryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
