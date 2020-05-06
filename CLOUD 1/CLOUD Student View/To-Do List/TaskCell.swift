//
//  TaskCell.swift
//  CLOUD 1
//
//  Created by Lee Yena on 2020-05-06.
//  Copyright © 2020 Butter. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {
    @IBOutlet weak var checkBoxOutlet: UIButton!
    @IBOutlet weak var taskNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func checkBoxAction(_ sender: Any) {
    }
    
}
