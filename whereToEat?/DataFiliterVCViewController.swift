//
//  dataFiliterVCViewController.swift
//  whereToEat?
//
//  Created by Gary on 2017/9/8.
//  Copyright © 2017年 CurtisCiou. All rights reserved.
//

import UIKit

class DataFiliterVCViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var sectionArray = ["number1","number2","number3"]
    var nameTest = [["麥當勞","dad","狗"],
                    ["當勞","貓","sweet"],
                    ["麥當","dad","山豬"]]
    var number = ["dad","mom","sweet"]
    var add = ["狗","貓","山豬"]
    var isOpen = [0,0,0]
    var sellecredIndexPath :IndexPath!
    
    @IBOutlet weak var tableView: UITableView!
    func numberOfSections(in tableView: UITableView) -> Int {
        return isOpen.count
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
            header.name.text = sectionArray[section]
            header.expandBtn.tag = section
    
        return header
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.section,indexPath.row)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:dataInfoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "dataInfoTableViewCell", for: indexPath) as! dataInfoTableViewCell
        cell.address.text = nameTest[indexPath.section][0]
        cell.phoneNumber.text = nameTest[indexPath.section][1]
        cell.time.text = nameTest[indexPath.section][2]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
