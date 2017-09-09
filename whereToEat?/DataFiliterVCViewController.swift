//
//  dataFiliterVCViewController.swift
//  whereToEat?
//
//  Created by Gary on 2017/9/8.
//  Copyright © 2017年 CurtisCiou. All rights reserved.
//

import UIKit

class DataFiliterVCViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var sectionArray = ["麥當勞","肯德基","漢堡王"]
    
    var allData :Top10Structure?
    var isOpen:[Int] = []
    var id:[String] = []
    @IBOutlet weak var tableView: UITableView!
    func numberOfSections(in tableView: UITableView) -> Int {
        return (allData?.Top10Restaurant.restaurants.count)!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isOpen[section] == 0 {
            return 0
        }else{
            return 1
        }
        
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header : dataFilterTableViewCell = tableView.dequeueReusableCell(withIdentifier: "datafilterTableViewCell") as! dataFilterTableViewCell
            header.name.text = allData?.Top10Restaurant.restaurants[section].restaurant_name
            header.expandBtn.tag = section
            header.loveButton.tag = section
            header.loveButton.setImage(UIImage(named:"love0"), for: .normal)
            header.layer.borderWidth = 1.5
            header.layer.borderColor = UIColor.gray.cgColor
        let btnTag : Int = Int((allData?.Top10Restaurant.restaurants[section].restaurant_identification)!)!
            header.loveButton.tag = btnTag
        return header
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.section,indexPath.row)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:dataInfoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "dataInfoTableViewCell", for: indexPath) as! dataInfoTableViewCell
        cell.address.text = allData?.Top10Restaurant.restaurants[indexPath.section].restaurant_location
        cell.phoneNumber.text = allData?.Top10Restaurant.restaurants[indexPath.section].restaurant_phone
        cell.time.text = allData?.Top10Restaurant.restaurants[indexPath.section].restaurant_available_date
        
        cell.layer.borderWidth = 1.5
        cell.layer.borderColor = UIColor.gray.cgColor
        return cell
    }
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let footerView = UIView( CGRect(x:0, y:0, width: tableView.frame.size.width, height:10))
//        footerView.backgroundColor = UIColor.white
//
//        return footerView
//    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 10
    }
    @IBAction func loveIt(_ sender: UIButton) {
        if sender.imageView?.image == UIImage(named : "love0"){
            sender.setImage(UIImage(named:"love1"), for: .normal)
            print(sender.tag)
        }else{
            sender.setImage(UIImage(named:"love0"), for: .normal)
        }
    }
    @IBAction func expand(_ sender: UIButton) {
        print(sender.tag)
        if isOpen[sender.tag] == 0  {
            for i in 0..<isOpen.count{
                isOpen[i] = 0
            }
            isOpen[sender.tag] = 1
            
        }else{
             isOpen[sender.tag] = 0
        }
        self.tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parseLocalFile()
        let count = (allData?.Top10Restaurant.restaurants.count)!
        for _ in 1...count{
            isOpen.append(0)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    fileprivate func parseLocalFile() {
        let jsonFilePath:String = Bundle.main.path(forResource: "top10Restauran", ofType: "txt")!
        print(jsonFilePath)
        let url:URL = URL(fileURLWithPath: jsonFilePath)
        do {
            let jsonData:Data? = try Data(contentsOf: url)
            allData =  try JSONDecoder().decode(Top10Structure.self, from: jsonData!)
        } catch let error as NSError {
            print("\(error)")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
