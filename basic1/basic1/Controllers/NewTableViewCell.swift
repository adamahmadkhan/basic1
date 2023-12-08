//
//  NewTableViewCell.swift
//  basic1
//
//  Created by Adam Khan on 11/29/23.
//

import UIKit

class NewTableViewCell: UITableViewCell {

    
    
    
    @IBOutlet weak var messageLabelOutlet: UILabel!
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var dateLabelOutlet: UILabel!
    @IBOutlet weak var subjectLabelOutelet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
