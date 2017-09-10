//
//  PersonalPreferencesVC.swift
//  whereToEat?
//
//  Created by CurtisCiou on 2017/9/8.
//  Copyright © 2017年 CurtisCiou. All rights reserved.
//

import UIKit

class PersonalPreferencesVC: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate{
    
    @IBOutlet weak var PreferCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row == 0{
            let firstCell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstCell", for: indexPath) as! DistanceSellectCollector
            return firstCell
        }else if indexPath.row == 1{
            let secondCell = collectionView.dequeueReusableCell(withReuseIdentifier: "secondCell", for: indexPath) as! PriceSellectCollector
            return secondCell
        }else {
            let thirdCell = collectionView.dequeueReusableCell(withReuseIdentifier: "thirdCell", for: indexPath) as! FoodCategoryCollector
            return thirdCell
        }
        
        //        switch indexPath.section {
        //        case 0:
        //            let firstCell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstCell", for: indexPath) as! DistanceSellectCollector
        //            return firstCell
        //        case 1:
        //            // This means indexPath.section == 1
        //            let secondCell = collectionView.dequeueReusableCell(withReuseIdentifier: "secondCell", for: indexPath) as! PriceSellectCollector
        //            return secondCell
        //        case 2:
        //            // This means indexPath.section == 2
        //            let thirdCell = collectionView.dequeueReusableCell(withReuseIdentifier: "thirdCell", for: indexPath) as! FoodCategoryCollector
        //            return thirdCell
        //        default:
        //            let thirdCell = collectionView.dequeueReusableCell(withReuseIdentifier: "thirdCell", for: indexPath) as! FoodCategoryCollector
        //            return thirdCell
        //        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    //        let myCell:MyCollectionViewCell = collectionView.cellForItem(at: indexPath) as! MyCollectionViewCell
    //        myCell.backgroundColor = UIColor.gray
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


