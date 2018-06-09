//
//  WooShippingClass.swift
//  Eightfold
//
//  Created by Brianna Lee on 3/4/18.
//  Copyright © 2018 Owly Design. All rights reserved.
//

import Foundation
import ObjectMapper

/// The product shipping class API allows you to create, view, update, and delete individual shipping classes.
public class WooShippingClass: Mappable {
    
    /// Unique identifier for the resource.
    var id: WooID?
    
    /// Shipping class name.
    var name: String?
    
    /// An alphanumeric identifier for the resource unique to its type.
    var slug: String?
    
    /// HTML description of the resource.
    var description: String?
    
    /// Number of published products for the resource.
    var count: String?
    
    required public init?(map: Map) { }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        slug <- map["slug"]
        description <- map["description"]
        count <- map["count"]
    }
}