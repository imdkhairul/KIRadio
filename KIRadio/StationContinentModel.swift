//
//  StationContinentModel.swift
//  KIRadio
//
//  Created by Khairul Islam on 11/15/16.
//  Copyright © 2016 Khairul Islam. All rights reserved.
//

import UIKit

struct StaionContinentDictionaryKeys {
    static let kStationContinetidKey = "id"
    static let kStationContinentNameKey = "name"
    static let kStaionContinentSlugKey = "slug"
}

class StationContinentModel: NSObject {

    var continentid:NSString?
    var name:NSString?
    var slug:NSString?
    
    init(stationDictionary:NSDictionary) {
        
        if let continentID = stationDictionary[StaionContinentDictionaryKeys.kStationContinetidKey] as? NSString {
            self.continentid = continentID
        }
        if let naMe = stationDictionary[StaionContinentDictionaryKeys.kStationContinetidKey] {
            self.name = naMe as? NSString
        }
        if let sLug = stationDictionary[StaionContinentDictionaryKeys.kStaionContinentSlugKey] as? NSString{
            self.slug = sLug
        }
    }
    
    
}
