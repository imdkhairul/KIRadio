//
//  KIRadioModelBuilder.swift
//  KIRadio
//
//  Created by Khairul Islam on 11/23/16.
//  Copyright © 2016 Khairul Islam. All rights reserved.
//

import UIKit

class KIRadioModelBuilder: NSObject {

    class func stationListFromJSONdata(jsondata:Data,error:NSError) -> NSArray {
        
        let stationList:NSMutableArray = NSMutableArray.init()
        do {
            let staionArray = try JSONSerialization.jsonObject(with: jsondata as Data, options:JSONSerialization.ReadingOptions(rawValue: UInt(0))) as? NSArray
            for station in staionArray! {
                let stationbasicModel = StationModel.init(dictionary: station as! NSDictionary)
                stationList.add(stationbasicModel)
            }
        } catch {
            print(error)
        }
        return stationList
    }
    
    class func categoryListFromJSONdata(jsondata:NSData,error:NSError) -> NSArray {
        
        let categoryList:NSMutableArray = NSMutableArray.init()
        do {
            let categoryArray = try JSONSerialization.jsonObject(with: jsondata as Data, options:JSONSerialization.ReadingOptions(rawValue: UInt(0))) as? NSArray
            for station in categoryArray! {
                let categoryModel = StationCategoryModel.init(dictionary: station as! NSDictionary)
                categoryList.add(categoryModel)
            }
        } catch {
            print(error)
        }
        return categoryList
    }
    class func countryListFromJSONdata(jsondata:NSData,error:NSError) -> NSArray {
        
        let countryList:NSMutableArray = NSMutableArray.init()
        do {
            let countryArray = try JSONSerialization.jsonObject(with: jsondata as Data, options:JSONSerialization.ReadingOptions(rawValue: UInt(0))) as? NSArray
            for country in countryArray! {
                let countryModel = StationCountryModel.init(dictionary: country as! NSDictionary)
                countryList.add(countryModel)
            }
        } catch {
            print(error)
        }
        return countryList
    }
    class func continentListFromJSONdata(jsondata:Data,error:NSError) -> NSArray {
        
        let continentList:NSMutableArray = NSMutableArray.init()
        do {
            let continentArray = try JSONSerialization.jsonObject(with: jsondata as Data, options:JSONSerialization.ReadingOptions(rawValue: UInt(0))) as? NSArray
            for continent in continentArray! {
                let categoryModel = StationCategoryModel.init(dictionary: continent as! NSDictionary)
                continentList.add(categoryModel)
            }
        } catch {
            print(error)
        }
        return continentList
    }
}
