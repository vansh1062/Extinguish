//
//  TaskSummaryTableViewCell.swift
//  Extinguish
//
//  Created by Thrishalini on 28/02/23.
//

import UIKit

class TaskSummaryTableViewCell: UITableViewCell {

    @IBOutlet weak var taskIdLabel: UILabel!
    
    
    @IBOutlet weak var priorityLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
