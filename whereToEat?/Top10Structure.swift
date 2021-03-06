//
//  Top10Structure.swift
//  whereToEat?
//
//  Created by CurtisCiou on 2017/9/8.
//  Copyright © 2017年 CurtisCiou. All rights reserved.
//
//CAUTION!!! TEST JSON FILE USED
//NOT NECESSARY DATA

import Foundation

struct restaurant:Codable {
    var restaurant_name:String
    var restaurant_available_time:String
    var restaurant_available_date:String
    var restaurant_phone:String
    var restaurant_location:String
    var restaurant_coordinate_latitude:String
    var restaurant_coordinate_longitude:String
    var restaurant_price_Range:String
    var restaurant_price_Acceptability:String
    var restaurant_rank:String
    var restaurant_socialMedia:String
    var restaurant_top10:String
}

struct Result:Codable{
    var uploadDate:String
    var restaurants:[restaurant]
}

struct Top10Structure:Codable {
    //    var result:Result
    var Top10Restaurant:Result
}
