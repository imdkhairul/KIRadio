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
        
        if dictionary.object(forKey:ImageDictionaryKeys.kImageDictionaryKey) != nil {
            let imageDictionary:NSDictionary = dictionary.object(forKey:ImageDictionaryKeys.kImageDictionaryKey) as! NSDictionary
            
            if imageDictionary.object(forKey: ImageDictionaryKeys.kImageUrlKey) != nil {
                let imageUrl:NSString = imageDictionary.object(forKey: ImageDictionaryKeys.kImageUrlKey) as! NSString
                self.originalImageUrl = NSURL.init(fileURLWithPath:imageUrl as String)
            }
            
            if imageDictionary.object(forKey: ImageDictionaryKeys.kImageThumbKey) != nil {
                let thumbImageDictionary:NSDictionary = imageDictionary.object(forKey: ImageDictionaryKeys.kImageThumbKey) as! NSDictionary
                if thumbImageDictionary.object(forKey: ImageDictionaryKeys.kImageUrlKey) != nil {
                    
                let thumbimageurl:NSString = imageDictionary.object(forKey: ImageDictionaryKeys.kImageUrlKey) as! NSString
                self.thumbImageUrl = NSURL.init(fileURLWithPath:thumbimageurl as String)
                    
                }
            }
        }
    }
}
