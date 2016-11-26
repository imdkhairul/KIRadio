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
        if let idstring = dictionary[StationBasicModelDictionaryKeys.kStationBasicModelidKey] as? NSString{
            self.id = idstring
        }
        if let nameString = dictionary[StationBasicModelDictionaryKeys.kStationBasicModelNameKey] as? NSString {
            self.name = nameString
        }
        if let countryString = dictionary[StationBasicModelDictionaryKeys.kStationBasicModelCountryKey] as? NSString{
            self.country = countryString
        }
        if let webSite = dictionary[StationBasicModelDictionaryKeys.kStationBasicModelWebsiteKey] as? NSString {
            self.website = webSite
        }
        if let createdat = dictionary[StationBasicModelDictionaryKeys.kStationBasicModelcreatedatKey] as? NSString {
            self.createdAt = createdat
        }
        if let updatedat = dictionary[StationBasicModelDictionaryKeys.kStationBasicModelupdatedKey] as? NSString {
            self.updatedAt = updatedat
        }
        if let sluG = dictionary[StationBasicModelDictionaryKeys.kStationBasicModelslugKey] as? NSString {
            self.slug = sluG
        }
        if let facebookurl = dictionary[StationBasicModelDictionaryKeys.kStationBasicModelFacebookKey] as? NSString{
            self.facebookUrl = facebookurl
        }
        if let twitterurl = dictionary[StationBasicModelDictionaryKeys.kStationBasicModelTwitterKey] as? NSString{
            self.twitterUrl = twitterurl
        }
        self.stationImageModel = StationImageModel(dictionary: dictionary)
    }
    
    
}
