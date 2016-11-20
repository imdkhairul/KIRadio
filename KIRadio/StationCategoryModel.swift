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
        if dictionary.object(forKey: StationCategoryDictionaryKeys.kStationCategoryDictionaryIdKey) != nil{
            self.categoryID = dictionary.object(forKey: StationCategoryDictionaryKeys.kStationCategoryDictionaryIdKey) as? NSString
        }
        if dictionary.object(forKey: StationCategoryDictionaryKeys.kStationCategoryDictionaryTitleKey) != nil{
            self.categoryName = dictionary.object(forKey: StationCategoryDictionaryKeys.kStationCategoryDictionaryTitleKey) as? NSString
        }
        if dictionary.object(forKey: StationCategoryDictionaryKeys.kStationCategoryDictionaryDescriptionKey) != nil{
            self.categoryDescription = dictionary.object(forKey: StationCategoryDictionaryKeys.kStationCategoryDictionaryDescriptionKey) as? NSString
        }
        if dictionary.object(forKey: StationCategoryDictionaryKeys.kStationCategoryDictionarySlugKey) != nil{
            self.slug = dictionary.object(forKey: StationCategoryDictionaryKeys.kStationCategoryDictionarySlugKey) as? NSString
        }
        if dictionary.object(forKey: StationCategoryDictionaryKeys.kStationCategoryDictionaryAncestryKey) != nil{
            self.andcestry = dictionary.object(forKey: StationCategoryDictionaryKeys.kStationCategoryDictionaryAncestryKey) as? NSString
        }
    }
}
