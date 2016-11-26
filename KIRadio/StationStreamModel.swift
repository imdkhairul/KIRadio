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
        if let streamurl = dictionary[StationStreamDictionaryKeys.kStreamDictionaryStreamKey] as? NSString{
            self.streamUrl = streamurl
        }
        if let bitrate = dictionary[StationStreamDictionaryKeys.kStreamDictionaryBitrateKey] as? NSString {
            self.bitRate = bitrate
        }
        if let contenttype = dictionary[StationStreamDictionaryKeys.kStreamDictionaryContentTypeKey] as? NSString {
            self.contentType = contenttype
        }
        if let staTus = dictionary[StationStreamDictionaryKeys.kStreamDictionaryStatusKey] as? NSString {
            self.status = staTus
        }
    }
}
