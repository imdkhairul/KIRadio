//
//  StationCategoryModel.swift
//  KIRadio
//
//  Created by Khairul Islam on 11/15/16.
//  Copyright © 2016 Khairul Islam. All rights reserved.
//

import UIKit

class StationCategoryModel: NSObject {

    var categoryID:NSString
    var categoryName:NSString
    var categoryDescription:NSString
    var slug:NSString
    var andcestry:NSString
    
    init(categoryid:NSString,categoryname:NSString,categorydescription:NSString,slug:NSString,andcestry:NSString) {
        self.categoryID = categoryid
        self.categoryName = categoryname
        self.categoryDescription = categorydescription
        self.slug = slug
        self.andcestry = andcestry
    }
}
