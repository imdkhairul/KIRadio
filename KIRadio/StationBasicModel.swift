//
//  StationBasicModel.swift
//  KIRadio
//
//  Created by Khairul Islam on 11/15/16.
//  Copyright © 2016 Khairul Islam. All rights reserved.
//

import UIKit

class StationBasicModel: NSObject {

    var id:NSString
    var name:NSString 
    var stationDescription:NSString 
    var country:NSString 
    var website:NSString 
    var createdAt:NSString 
    var updatedAt:NSString 
    var slug:NSString 
    var facebookUrl:NSString 
    var twitterUrl:NSString 
    var stationImageModel:StationImageModel 
    
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
    
}
