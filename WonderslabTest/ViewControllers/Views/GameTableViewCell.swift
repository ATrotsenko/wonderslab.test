//
//  GameTableViewCell.swift
//  WonderslabTest
//
//  Created by Alexey Trotsenko on 01.03.2018.
//  Copyright © 2018 Alexey Trotsenko. All rights reserved.
//

import UIKit

class GameTableViewCell: UITableViewCell {

    @IBOutlet var itemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func source(item: String) {
        itemLabel.text = item
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
