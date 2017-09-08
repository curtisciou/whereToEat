//
//  AddResturantVC.swift
//  lunch?
//
//  Created by CurtisCiou on 2017/9/1.
//  Copyright © 2017年 CurtisCiou. All rights reserved.
//

import UIKit

class AddResturantVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var highRankResturant:Top10Structure?
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var favoriteResterantTextfield: UITextField!
    @IBAction func addFavoriteResterantButton(_ sender: Any) {
    }
    
//    fileprivate func parseLocalFile() {
//        var jsonFilePath:String = Bundle.main.path(forResource: "Top10Restauran", ofType: "json")!
//        let url:URL = URL(fileURLWithPath: jsonFilePath)
//        do {
//            let jsonData:Data? = try Data(contentsOf: url)
//            highRankResturant =  try JSONDecoder().decode(Top10Structure.self, from: jsonData!)
//        } catch let error as NSError {
//            print("\(error)")
//        }
//        print(highRankResturant!)
//    }
    
    func downloadJSONFile(){
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        let url:URL = URL(string: "http://data.taipei/opendata/datalist/apiAccess?scope=resourceAquire&rid=ed83db24-f206-4ff0-9135-a0a8d65ace31")!
        DispatchQueue.global().async {
            do {
                let data:Data = try Data(contentsOf: url)
                self.highRankResturant =  try JSONDecoder().decode(Top10Structure?.self, from: data)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                    UIApplication.shared.isNetworkActivityIndicatorVisible = false
                }
            }catch {
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
//        downloadJSONFile()
        
        let jsonFilePath:String = Bundle.main.path(forResource: "Top10Resturant", ofType: "txt")!
        print(jsonFilePath)
        let url:URL = URL(fileURLWithPath: jsonFilePath)
        do {
            let jsonData:Data? = try Data(contentsOf: url)
            highRankResturant =  try JSONDecoder().decode(Top10Structure.self, from: jsonData!)
        } catch let error as NSError {
            print("\(error)")
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alertController = UIAlertController(title: "Hint", message: "YOU SELECT Row \(indexPath.row)", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if highRankResturant == nil{
            return 0
        }
//        return (highRankResturant?.result.results.count)!
        return (highRankResturant?.Top10Resturant.restaurants.count)!
//        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PreferencesSourceCell", for: indexPath)
        cell.textLabel?.text = highRankResturant?.Top10Resturant.restaurants[indexPath.row].restaurant_name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        prepare next segue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
