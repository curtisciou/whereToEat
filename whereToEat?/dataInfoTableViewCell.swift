//
//  dataInfoTableViewCell.swift
//  whereToEat?
//
//  Created by Gary on 2017/9/8.
//  Copyright © 2017年 CurtisCiou. All rights reserved.
//

import UIKit

class dataInfoTableViewCell: UITableViewCell {
    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    
    @IBOutlet weak var locationImg: UIImageView!
    @IBOutlet weak var phoneImg: UIImageView!
    @IBOutlet weak var timeImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        phoneNumber.isUserInteractionEnabled = true
        address.isUserInteractionEnabled = true
        
    }


}
