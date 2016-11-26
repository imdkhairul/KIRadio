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
        if let countryname = dictionary[StationCountryDictionaryKeys.kStationCountrynameKey] as? NSString{
            self.countryName = countryname
        }
        if let countrycode = dictionary[StationCountryDictionaryKeys.kStationCountryCodeKey] as? NSString {
            self.countryCode = countrycode
        }
        if let countryregion = dictionary[StationCountryDictionaryKeys.kStationregionKey] as? NSString {
            self.region = countryregion
        }
        if let countrysubregion = dictionary[StationCountryDictionaryKeys.kStationsubregionKey] as? NSString {
            self.subRegion = countrysubregion
        }
    }
    
    
}
