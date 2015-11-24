//
//  MyCustomCell.swift
//  MeltingPotIOS
//
//  Created by Kevin Djedje on 23/10/2015.
//  Copyright © 2015 Kevin Djedje. All rights reserved.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titreLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
