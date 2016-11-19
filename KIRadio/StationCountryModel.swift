//
//  StationCountryModel.swift
//  KIRadio
//
//  Created by Khairul Islam on 11/18/16.
//  Copyright © 2016 Khairul Islam. All rights reserved.
//

import UIKit

struct StationCountryDictionaryKeys {
    static let kStationCountrynameKey = "name"
    static let kStationCountryCodeKey = "countrycode"
    static let kStationregionKey = "region"
    static let kStationsubregionKey = "subregion"
}

class StationCountryModel: NSObject {
    var countryName:NSString?
    var countryCode:NSString?
    var region:NSString?
    var subRegion:NSString?
    
    init(dictionary:NSDictionary) {
        if dictionary.object(forKey: StationCountryDictionaryKeys.kStationCountrynameKey) != nil {
            let countryname = dictionary.object(forKey: StationCountryDictionaryKeys.kStationCountrynameKey) as! NSString
            self.countryName = countryname
        }
    }
    
    
}
