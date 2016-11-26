//
//  StationModel.swift
//  KIRadio
//
//  Created by Khairul Islam on 11/15/16.
//  Copyright © 2016 Khairul Islam. All rights reserved.
//

import UIKit
struct StaionModelDictionaryKeys {
    static let kStationStreamsKey = "streams"
    static let kStationCategoriesKey = "categories"
}

class StationModel: StationBasicModel {

    var streamArray:NSMutableArray?
    var categoryArray:NSMutableArray?
    
    override init(dictionary:NSDictionary) {
        
        super.init(dictionary: dictionary)
        self.streamArray  = NSMutableArray.init()
        self.categoryArray = NSMutableArray.init()
        
        if let streamarray = dictionary[StaionModelDictionaryKeys.kStationStreamsKey] as? NSArray{
            
            for stream in streamarray {
                let stationstreammodel = StationStreamModel.init(dictionary: stream as! NSDictionary)
                self.streamArray?.add(stationstreammodel)
            }
        }
        
        if let categoryarray = dictionary[StaionModelDictionaryKeys.kStationCategoriesKey] as? NSArray{
            for stream in categoryarray {
                let categorymodel = StationCategoryModel.init(dictionary: stream as! NSDictionary)
                self.categoryArray?.add(categorymodel)
            }
        }
    }
}
