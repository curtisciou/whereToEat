//
//  DecisionVC.swift
//  whereToEat?
//
//  Created by CurtisCiou on 2017/9/8.
//  Copyright © 2017年 CurtisCiou. All rights reserved.
//

import UIKit

class DecisionVC: UIViewController {
    @IBOutlet weak var createOptionOutlet: UIButton!
    @IBOutlet weak var conditionFilterOutlet: UIButton!
    
    @IBAction func createOptionButtonDidTouchDown(_ sender: Any) {
        if let button : UIButton = sender as? UIButton{
            button.isSelected = !button.isSelected
            if (button.isSelected){
                self.createOptionOutlet.setTitleColor(UIColor.white, for: UIControlState.highlighted)
                self.createOptionOutlet.layer.cornerRadius = 10
                self.createOptionOutlet.layer.borderWidth = 2
                self.createOptionOutlet.layer.backgroundColor = UIColor.init(red: 0.58431, green: 0.662745098, blue: 0.8901960784, alpha: 0).cgColor
                self.createOptionOutlet.layer.borderColor = UIColor.init(red: 0.4470588235, green: 0.537254902, blue: 0.8274509804, alpha: 0).cgColor
            }else{
                self.createOptionOutlet.layer.cornerRadius = 10
                self.createOptionOutlet.layer.borderWidth = 2
                self.createOptionOutlet.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
    }
    
    @IBAction func conditionFilterDidTouchDown(_ sender: UIButton) {
        if let button : UIButton = sender as? UIButton{
            button.isSelected = !button.isSelected
            if (button.isSelected){
                self.conditionFilterOutlet.setTitleColor(UIColor.white, for: UIControlState.highlighted)
                self.conditionFilterOutlet.layer.cornerRadius = 10
                self.conditionFilterOutlet.layer.borderWidth = 2
                self.conditionFilterOutlet.layer.backgroundColor = UIColor.init(red: 0.58431, green: 0.662745098, blue: 0.8901960784, alpha: 0).cgColor
                self.createOptionOutlet.layer.borderColor = UIColor.init(red: 0.4470588235, green: 0.537254902, blue: 0.8274509804, alpha: 0).cgColor
            }else{
                self.conditionFilterOutlet.layer.cornerRadius = 10
                self.conditionFilterOutlet.layer.borderWidth = 2
                self.conditionFilterOutlet.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
    }
    
    @IBAction func createOptionButton(_ sender: Any) {
        
    }
    
    @IBAction func conditionFilter(_ sender: Any) {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.createOptionOutlet.layer.cornerRadius = 10
        self.createOptionOutlet.layer.borderWidth = 2
        self.createOptionOutlet.layer.borderColor = UIColor.lightGray.cgColor
        
        self.conditionFilterOutlet.layer.cornerRadius = 10
        self.conditionFilterOutlet.layer.borderWidth = 2
        self.conditionFilterOutlet.layer.borderColor = UIColor.lightGray.cgColor
        
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor =
            UIColor.lightGray
        self.navigationController?.navigationBar.isTranslucent = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

