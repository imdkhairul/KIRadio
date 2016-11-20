//
//  StationStreamModel.swift
//  KIRadio
//
//  Created by Khairul Islam on 11/15/16.
//  Copyright © 2016 Khairul Islam. All rights reserved.
//

import UIKit
struct StationStreamDictionaryKeys {
    static let kStreamDictionaryStreamKey = "stream"
    static let kStreamDictionaryBitrateKey = "bitrate"
    static let kStreamDictionaryContentTypeKey = "content_type"
    static let kStreamDictionaryStatusKey = "status"
}
class StationStreamModel: NSObject {
    
    var streamUrl:NSString?
    var bitRate:NSString?
    var contentType:NSString?
    var status:NSString?
    
    init(dictionary:NSDictionary) {
        if dictionary.object(forKey: StationStreamDictionaryKeys.kStreamDictionaryStreamKey) != nil{
            self.streamUrl = dictionary.object(forKey: StationStreamDictionaryKeys.kStreamDictionaryStreamKey) as? NSString
        }
        if dictionary.object(forKey: StationStreamDictionaryKeys.kStreamDictionaryBitrateKey) != nil {
            self.bitRate = dictionary.object(forKey: StationStreamDictionaryKeys.kStreamDictionaryBitrateKey) as? NSString
        }
        if dictionary.object(forKey: StationStreamDictionaryKeys.kStreamDictionaryContentTypeKey) != nil {
            self.contentType = dictionary.object(forKey: StationStreamDictionaryKeys.kStreamDictionaryContentTypeKey) as? NSString
        }
        if dictionary.object(forKey: StationStreamDictionaryKeys.kStreamDictionaryStatusKey) != nil {
            self.status = dictionary.object(forKey: StationStreamDictionaryKeys.kStreamDictionaryStatusKey) as? NSString
        }
    }
}
