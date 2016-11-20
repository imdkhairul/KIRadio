//
//  StationBasicModel.swift
//  KIRadio
//
//  Created by Khairul Islam on 11/15/16.
//  Copyright © 2016 Khairul Islam. All rights reserved.
//

import UIKit
struct StationBasicModelDictionaryKeys {
    
    static let kStationBasicModelidKey = "id"
    static let kStationBasicModelNameKey = "name"
    static let kStationBasicModelCountryKey = "country"
    static let kStationBasicModelWebsiteKey = "website"
    static let kStationBasicModelTwitterKey = "twitter"
    static let kStationBasicModelFacebookKey = "facebook"
    static let kStationBasicModelcreatedatKey = "created_at"
    static let kStationBasicModelupdatedKey = "updated_at"
    static let kStationBasicModelslugKey = "Slug"
}
class StationBasicModel: NSObject {

    var id:NSString?
    var name:NSString?
    var stationDescription:NSString?
    var country:NSString?
    var website:NSString?
    var createdAt:NSString?
    var updatedAt:NSString?
    var slug:NSString?
    var facebookUrl:NSString?
    var twitterUrl:NSString?
    var stationImageModel:StationImageModel?
    
    init(id:NSString,stationName:NSString,staionDescripTion:NSString,country:NSString,stationWebSite:NSString,stationCreatedAt:NSString,stationupdatedAt:NSString,slug:NSString,facebookurl:NSString,twitterUrl:NSString,stationimageModel:StationImageModel) {
        
        self.id = id
        self.name = stationName
        self.stationDescription = staionDescripTion
        self.country = country
        self.website = stationWebSite
        self.createdAt = stationCreatedAt
        self.updatedAt = stationupdatedAt
        self.slug = slug
        self.facebookUrl = facebookurl
        self.twitterUrl = twitterUrl
        self.stationImageModel = stationimageModel
        
    }
    
    init(dictionary:NSDictionary) {
        if dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelidKey) != nil {
            self.id = dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelidKey) as? NSString
        }
        if dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelNameKey) != nil {
            self.name = dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelNameKey) as? NSString
        }
        if dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelCountryKey) != nil {
            self.country = dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelCountryKey) as? NSString
        }
        if dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelWebsiteKey) != nil {
            self.website = dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelWebsiteKey) as? NSString
        }
        if dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelcreatedatKey) != nil {
            self.createdAt = dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelcreatedatKey) as? NSString
        }
        if dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelupdatedKey) != nil {
            self.updatedAt = dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelupdatedKey) as? NSString
        }
        if dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelslugKey) != nil {
            self.slug = dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelslugKey) as? NSString
        }
        if dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelFacebookKey) != nil {
            self.facebookUrl = dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelFacebookKey) as? NSString
        }
        if dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelTwitterKey) != nil {
            self.twitterUrl = dictionary.object(forKey: StationBasicModelDictionaryKeys.kStationBasicModelTwitterKey) as? NSString
        }
        self.stationImageModel = StationImageModel(dictionary: dictionary)
    }
    
    
}
