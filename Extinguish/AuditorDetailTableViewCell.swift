//
//  AuditorDetailTableViewCell.swift
//  Extinguish
//
//  Created by Tanvi Gupta on 27/02/23.
//

import UIKit

class AuditorDetailTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet var auditorID: UILabel!
    
    @IBOutlet var auditorName: UILabel!
}
