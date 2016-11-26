//
//  KIRadioWebServiceCommunicator.swift
//  KIRadio
//
//  Created by Khairul Islam on 11/21/16.
//  Copyright © 2016 Khairul Islam. All rights reserved.
//

import UIKit
import Alamofire

typealias KIRadioServiceCompletionBlock = (_ listArray:NSArray) -> Void

struct KIRadioServiceApiKey {
    static let kApiKey = "06e27cb2f08aca10ca284a296c"
}

struct KIRadioWebServiceUrls {
    static let kKIRadioWebServiceBaseUrl = "http://api.dirble.com/v2"
    struct KIRadioWebServiceStationSubUrl {
            static let kKIRadioWebServiceAllStationSubUrl = "/stations"
            static let kKIRadioWebServiceRecentStationSubUrl = "/recent"
            static let kKIRadioWebServicePopularStationSubUrl = "/popular"
    }
    struct KIRadioWebServiceCategorySubUrl {
        static let kKIRadioWebServiceAllCategoriesSubUrl = "/categories"
        static let kKIRadioWebServicePrimaryCategorySubUrl = "/primary"
        static let kKIRadioWebServiceChildCategorySubUrl = "/childs"
    }
    struct KIRadioWebServiceSearchSubUrl {
        static let kKIRadioWebServiceAllSearchSubUrl = "/search"
    }
    struct KIRadioWebServiceCountryUrl {
        static let kKIRadioWebServiceCountryListUrl = "/countries"
        static let kKIRadioWebServiceContinentListUrl = "/continents"
    }
    
    static func addPagination(pageNumber:NSInteger,numberofItems:NSInteger) -> NSString {
        return "?page=\(pageNumber)&per_page=\(numberofItems)" as NSString
    }
    static func addApiKey() -> NSString {
        return "?token=\(KIRadioServiceApiKey.kApiKey)" as NSString
    }
    static func recentStationUrl(isPagingEnabled:Bool,pageNumber:NSInteger,numberofitems:NSInteger) -> NSString {
        if isPagingEnabled {
             return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceStationSubUrl.kKIRadioWebServiceAllStationSubUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceStationSubUrl.kKIRadioWebServiceRecentStationSubUrl)\(KIRadioWebServiceUrls.addPagination(pageNumber: pageNumber, numberofItems: numberofitems))\(KIRadioWebServiceUrls.addApiKey())" as NSString
        }
        return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceStationSubUrl.kKIRadioWebServiceAllStationSubUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceStationSubUrl.kKIRadioWebServiceRecentStationSubUrl)\(KIRadioWebServiceUrls.addApiKey())" as NSString
    }
    
    static func allStationUrl(isPagingEnabled:Bool,pageNumber:NSInteger,numberofitems:NSInteger) -> NSString {
        if isPagingEnabled {
            return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceStationSubUrl.kKIRadioWebServiceAllStationSubUrl)\(KIRadioWebServiceUrls.addPagination(pageNumber: pageNumber, numberofItems: numberofitems))\(KIRadioWebServiceUrls.addApiKey())" as NSString
        }
        return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceStationSubUrl.kKIRadioWebServiceAllStationSubUrl)\(KIRadioWebServiceUrls.addApiKey())" as NSString
    }
    
    static func getCategoryUrl(isPagingEnabled:Bool,pageNumber:NSInteger,numberofitems:NSInteger) -> NSString {
        if isPagingEnabled {
            return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceCategorySubUrl.kKIRadioWebServiceAllCategoriesSubUrl)\(KIRadioWebServiceUrls.addPagination(pageNumber: pageNumber, numberofItems: numberofitems))\(KIRadioWebServiceUrls.addApiKey())" as NSString
        }
        return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceCategorySubUrl.kKIRadioWebServiceAllCategoriesSubUrl)\(KIRadioWebServiceUrls.addApiKey())" as NSString
    }
    
    static func getSearchUrl(searchText:NSString,isPagingEnabled:Bool,pageNumber:NSInteger,numberofitems:NSInteger) -> NSString {
        if isPagingEnabled {
            return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceSearchSubUrl.kKIRadioWebServiceAllSearchSubUrl)\(searchText)\(KIRadioWebServiceUrls.addPagination(pageNumber: pageNumber, numberofItems: numberofitems))\(KIRadioWebServiceUrls.addApiKey())" as NSString
        }
        return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceSearchSubUrl.kKIRadioWebServiceAllSearchSubUrl)\(searchText)\(KIRadioWebServiceUrls.addApiKey())" as NSString
    }
    
    static func getCountryListUrl(isPagingEnabled:Bool,pageNumber:NSInteger,numberofitems:NSInteger) -> NSString {
        if isPagingEnabled {
            return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceCountryUrl.kKIRadioWebServiceCountryListUrl)\(KIRadioWebServiceUrls.addPagination(pageNumber: pageNumber, numberofItems: numberofitems))\(KIRadioWebServiceUrls.addApiKey())" as NSString
        }
        return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceCountryUrl.kKIRadioWebServiceCountryListUrl)\(KIRadioWebServiceUrls.addApiKey())" as NSString
    }
    
    static func getContinentListUrl(isPagingEnabled:Bool,pageNumber:NSInteger,numberofitems:NSInteger) -> NSString {
        if isPagingEnabled {
            return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceCountryUrl.kKIRadioWebServiceContinentListUrl)\(KIRadioWebServiceUrls.addPagination(pageNumber: pageNumber, numberofItems: numberofitems))\(KIRadioWebServiceUrls.addApiKey())" as NSString
        }
        return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceCountryUrl.kKIRadioWebServiceContinentListUrl)\(KIRadioWebServiceUrls.addApiKey())" as NSString
    }
    
    static func getCountryListUrlFromContinentID(continentid:NSString,isPagingEnabled:Bool,pageNumber:NSInteger,numberofitems:NSInteger) -> NSString {
        if isPagingEnabled {
            return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceCountryUrl.kKIRadioWebServiceContinentListUrl)\(continentid)\(KIRadioWebServiceUrls.KIRadioWebServiceCountryUrl.kKIRadioWebServiceCountryListUrl)\(KIRadioWebServiceUrls.addPagination(pageNumber: pageNumber, numberofItems: numberofitems))\(KIRadioWebServiceUrls.addApiKey())" as NSString
        }
        return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceCountryUrl.kKIRadioWebServiceContinentListUrl)\(continentid)\(KIRadioWebServiceUrls.KIRadioWebServiceCountryUrl.kKIRadioWebServiceCountryListUrl)\(KIRadioWebServiceUrls.addApiKey())" as NSString
    }
    
    static func getStationListUrlFromContryID(countryid:NSString,isPagingEnabled:Bool,pageNumber:NSInteger,numberofitems:NSInteger) -> NSString {
        if isPagingEnabled {
            return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceCountryUrl.kKIRadioWebServiceCountryListUrl)\(countryid)\(KIRadioWebServiceUrls.KIRadioWebServiceStationSubUrl.kKIRadioWebServiceAllStationSubUrl)\(KIRadioWebServiceUrls.addPagination(pageNumber: pageNumber, numberofItems: numberofitems))\(KIRadioWebServiceUrls.addApiKey())" as NSString
        }
        return "\(KIRadioWebServiceUrls.kKIRadioWebServiceBaseUrl)\(KIRadioWebServiceUrls.KIRadioWebServiceCountryUrl.kKIRadioWebServiceCountryListUrl)\(countryid)\(KIRadioWebServiceUrls.KIRadioWebServiceStationSubUrl.kKIRadioWebServiceAllStationSubUrl)\(KIRadioWebServiceUrls.addApiKey())" as NSString
    }
    
}

class KIRadioWebServiceCommunicator: NSObject {
    
    class func getrecentStaionList(ispagingenabled:Bool, pagenumber:NSInteger,numberOfItems:NSInteger, completionBlock:@escaping KIRadioServiceCompletionBlock) -> Void {
        
        Alamofire.request("\(KIRadioWebServiceUrls.recentStationUrl(isPagingEnabled: ispagingenabled,pageNumber: pagenumber,numberofitems: numberOfItems))").responseJSON { response in
//            if let JSON = response.result.value {
//                print("JSON: \(JSON)")
//            }
            let error = NSError.init()
            completionBlock(KIRadioModelBuilder.stationListFromJSONdata(jsondata: response.data!, error: error))
        }

    }
    
    class func getallStaionList(ispagingenabled:Bool, pagenumber:NSInteger,numberOfItems:NSInteger, completionBlock:@escaping KIRadioServiceCompletionBlock) -> Void {
        
        Alamofire.request("\(KIRadioWebServiceUrls.allStationUrl(isPagingEnabled: ispagingenabled,pageNumber: pagenumber,numberofitems: numberOfItems))").responseJSON { response in
            //            if let JSON = response.result.value {
            //                print("JSON: \(JSON)")
            //            }
            let error = NSError.init()
            completionBlock(KIRadioModelBuilder.stationListFromJSONdata(jsondata: response.data!, error: error))
        }
        
    }
    class func getCategoryList(ispagingenabled:Bool, pagenumber:NSInteger,numberOfItems:NSInteger, completionBlock:@escaping KIRadioServiceCompletionBlock) -> Void {
        
        Alamofire.request("\(KIRadioWebServiceUrls.allStationUrl(isPagingEnabled: ispagingenabled,pageNumber: pagenumber,numberofitems: numberOfItems))").responseJSON { response in
            //            if let JSON = response.result.value {
            //                print("JSON: \(JSON)")
            //            }
            let error = NSError.init()
            completionBlock(KIRadioModelBuilder.stationListFromJSONdata(jsondata: response.data!, error: error))
        }
        
    }
    
    class func getContinentList(ispagingenabled:Bool, pagenumber:NSInteger,numberOfItems:NSInteger, completionBlock:@escaping KIRadioServiceCompletionBlock) -> Void {
        
        Alamofire.request("\(KIRadioWebServiceUrls.getContinentListUrl(isPagingEnabled: ispagingenabled,pageNumber: pagenumber,numberofitems: numberOfItems))").responseJSON { response in
            //            if let JSON = response.result.value {
            //                print("JSON: \(JSON)")
            //            }
            let error = NSError.init()
            completionBlock(KIRadioModelBuilder.continentListFromJSONdata(jsondata: response.data!, error: error))
        }
    }
    class func getCountryListFromContinentid(continentid:NSString,ispagingenabled:Bool, pagenumber:NSInteger,numberOfItems:NSInteger, completionBlock:@escaping KIRadioServiceCompletionBlock) -> Void {
        
        Alamofire.request("\(KIRadioWebServiceUrls.getCountryListUrlFromContinentID(continentid: continentid, isPagingEnabled: ispagingenabled, pageNumber: pagenumber, numberofitems: numberOfItems))").responseJSON { response in
            //            if let JSON = response.result.value {
            //                print("JSON: \(JSON)")
            //            }
            let error = NSError.init()
            completionBlock(KIRadioModelBuilder.continentListFromJSONdata(jsondata: response.data!, error: error))
        }
    }
    
    class func getStationListFromCountryid(countryid:NSString,ispagingenabled:Bool, pagenumber:NSInteger,numberOfItems:NSInteger, completionBlock:@escaping KIRadioServiceCompletionBlock) -> Void {
        
        Alamofire.request("\(KIRadioWebServiceUrls.getStationListUrlFromContryID(countryid: countryid, isPagingEnabled: ispagingenabled, pageNumber: pagenumber, numberofitems: numberOfItems))").responseJSON { response in
            //            if let JSON = response.result.value {
            //                print("JSON: \(JSON)")
            //            }
            let error = NSError.init()
            completionBlock(KIRadioModelBuilder.continentListFromJSONdata(jsondata: response.data!, error: error))
        }
    }
    class func getStationListFromSearchtext(searchtext:NSString,ispagingenabled:Bool, pagenumber:NSInteger,numberOfItems:NSInteger, completionBlock:@escaping KIRadioServiceCompletionBlock) -> Void {
        
        Alamofire.request("\(KIRadioWebServiceUrls.getSearchUrl(searchText:searchtext, isPagingEnabled: ispagingenabled, pageNumber: pagenumber, numberofitems: numberOfItems))").responseJSON { response in
            //            if let JSON = response.result.value {
            //                print("JSON: \(JSON)")
            //            }
            let error = NSError.init()
            completionBlock(KIRadioModelBuilder.stationListFromJSONdata(jsondata: response.data!, error: error))
        }
    }
}
