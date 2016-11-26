//
//  StationImageModel.swift
//  KIRadio
//
//  Created by Khairul Islam on 11/15/16.
//  Copyright © 2016 Khairul Islam. All rights reserved.
//

import UIKit

struct ImageDictionaryKeys {
    static let kImageDictionaryKey = "image"
    static let kImageUrlKey = "url"
    static let kImageThumbKey = "thumb"
}
class StationImageModel: NSObject {

    var thumbImageUrl:NSURL?
    var originalImageUrl:NSURL?
    
    init(dictionary:NSDictionary) {
        
        if let imageDictionary = dictionary[ImageDictionaryKeys.kImageDictionaryKey] as? NSDictionary {            
            if let imageUrl = imageDictionary[ImageDictionaryKeys.kImageUrlKey] as? String {
                self.originalImageUrl = NSURL.init(fileURLWithPath:imageUrl as String)
            }
            if let thumbImageDictionary = imageDictionary[ImageDictionaryKeys.kImageThumbKey] as? NSDictionary{
                if let thumbimageurl = thumbImageDictionary[ImageDictionaryKeys.kImageUrlKey] as? String{
                    self.thumbImageUrl = NSURL.init(fileURLWithPath:thumbimageurl as String)
                }
            }
        }
    }
}
