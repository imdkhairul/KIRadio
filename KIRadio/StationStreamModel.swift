//
//  StationStreamModel.swift
//  KIRadio
//
//  Created by Khairul Islam on 11/15/16.
//  Copyright © 2016 Khairul Islam. All rights reserved.
//

import UIKit

class StationStreamModel: NSObject {
    
    var streamUrl:NSString
    var bitRate:NSString
    var contentType:NSString
    var status:NSString
    
    init(streamurl:NSString,bitrate:NSString,contenttype:NSString,status:NSString) {
        self.streamUrl = streamurl
        self.bitRate = bitrate
        self.status = status
        self.contentType = contenttype
    }
    
}
