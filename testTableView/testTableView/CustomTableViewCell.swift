//
//  CustomTableViewCell.swift
//  testTableView
//
//  Created by Gokul Murugan on 2022-11-02.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var customLable:UILabel!
    @IBOutlet var customImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
