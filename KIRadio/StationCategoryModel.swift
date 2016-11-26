//
//  StationCategoryModel.swift
//  KIRadio
//
//  Created by Khairul Islam on 11/15/16.
//  Copyright © 2016 Khairul Islam. All rights reserved.
//

import UIKit
struct StationCategoryDictionaryKeys {
    static let kStationCategoryDictionaryIdKey = "id"
    static let kStationCategoryDictionaryTitleKey = "title"
    static let kStationCategoryDictionaryDescriptionKey = "description"
    static let kStationCategoryDictionarySlugKey = "slug"
    static let kStationCategoryDictionaryAncestryKey = "ancestry"
}

class StationCategoryModel: NSObject {

    var categoryID:NSString?
    var categoryName:NSString?
    var categoryDescription:NSString?
    var slug:NSString?
    var andcestry:NSString?
    
    init(categoryid:NSString,categoryname:NSString,categorydescription:NSString,slug:NSString,andcestry:NSString) {
        self.categoryID = categoryid
        self.categoryName = categoryname
        self.categoryDescription = categorydescription
        self.slug = slug
        self.andcestry = andcestry
    }
    
    init(dictionary:NSDictionary) {
        if let categoryid = dictionary[StationCategoryDictionaryKeys.kStationCategoryDictionaryIdKey] as? NSString{
            self.categoryID = categoryid
        }
        if let categoryname = dictionary[StationCategoryDictionaryKeys.kStationCategoryDictionaryTitleKey] as? NSString{
            self.categoryName = categoryname
        }
        if let categorydescription = dictionary[StationCategoryDictionaryKeys.kStationCategoryDictionaryDescriptionKey] as? NSString{
            self.categoryDescription = categorydescription
        }
        if let sLug = dictionary[StationCategoryDictionaryKeys.kStationCategoryDictionarySlugKey] as? NSString{
            self.slug = sLug
        }
        if let andcesTry = dictionary[StationCategoryDictionaryKeys.kStationCategoryDictionaryAncestryKey] as? NSString{
            self.andcestry = andcesTry
        }
    }
}
