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
        
        if stationDictionary.object(forKey:StaionContinentDictionaryKeys.kStationContinetidKey) != nil {
            self.continentid = stationDictionary.object(forKey:StaionContinentDictionaryKeys.kStationContinetidKey) as? NSString
        }
        
        if stationDictionary.object(forKey:StaionContinentDictionaryKeys.kStationContinetidKey) != nil {
            self.name = stationDictionary.object(forKey:StaionContinentDictionaryKeys.kStationContinentNameKey) as? NSString
        }
        if stationDictionary.object(forKey:StaionContinentDictionaryKeys.kStaionContinentSlugKey) != nil {
            self.slug = stationDictionary.object(forKey:StaionContinentDictionaryKeys.kStaionContinentSlugKey) as? NSString
        }
    }
    
    
}
