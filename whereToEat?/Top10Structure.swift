//
//  Top10Structure.swift
//  lunch?
//
//  Created by CurtisCiou on 2017/9/2.
//  Copyright © 2017年 CurtisCiou. All rights reserved.
//

import Foundation

struct Top10Structure:Codable {
//    var result:Result
    var Top10Resturant:Result
}

struct Result:Codable{
    var uploadDate:String
    var restaurants:[restaurant]
}

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
//struct Facility:Codable {
//    var _id:String
//    var o_tlc_agency_name:String
//    var o_tlc_agency_category:String
//    var o_tlc_agency_categorychild:String
//    var o_tlc_agency_purpose:String
//    var o_tlc_agency_service:String
//    var o_tlc_agency_region:String
//    var o_tlc_agency_opentime:String
//    var o_tlc_agency_address:String
//    var o_tlc_agency_phone:String
//    var o_tlc_agency_fax:String
//    var o_tlc_agency_email:String
//    var o_tlc_agency_admincategory:String
//    var o_tlc_agency_img_front:String
//    var o_tlc_agency_img_inner:String
//    var o_tlc_agency_link:String
//}
//struct Result:Codable{
//    var offset:Int
//    var limit:Int
//    var count:Int
//    var sort:String
//    var results:[Facility]
//}




