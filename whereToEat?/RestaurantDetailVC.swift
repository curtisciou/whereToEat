//
//  ResturantDetailVC.swift
//  lunch?
//
//  Created by CurtisCiou on 2017/9/1.
//  Copyright © 2017年 CurtisCiou. All rights reserved.
//

import UIKit

class RestaurantDetailVC: UIViewController {
    @IBOutlet weak var loveBtn: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
  
    @IBOutlet weak var addressLabel: UILabel!
    var delegate : receiveResultProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func loveIt(_ sender: Any) {
    }
    
}
