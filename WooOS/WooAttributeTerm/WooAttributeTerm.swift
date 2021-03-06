//
//  WooAttributeTerm.swift
//  Eightfold
//
//  Created by Brianna Lee on 3/3/18.
//  Copyright © 2018 Owly Design. All rights reserved.
//

import Foundation
import ObjectMapper

/// The individual term of a product attribute. An attribute would be "Color", and the term would be "Blue".
open class WooAttributeTerm: Mappable {
    
    /// Unique identifier for the resource.
    public var id: WooID?
    
    /// Term name.
    public var name: String?
    
    /// An alphanumeric identifier for the resource unique to its type.
    public var slug: String?
    
    /// HTML description of the resource.
    public var description: String?
    
    /// Menu order, used to custom sort the resource.
    public var menuOrder: Int?
    
    /// Number of published products for the resource.
    public var count: Int?
    
    public required init?(map: Map) { }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        slug <- map["slug"]
        description <- map["description"]
        menuOrder <- map["menu_order"]
        count <- map["count"]
    }
}
