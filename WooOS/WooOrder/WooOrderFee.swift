//
//  WooOrderFee.swift
//  Eightfold
//
//  Created by Brianna Lee on 3/1/18.
//  Copyright © 2018 Owly Design. All rights reserved.
//

import Foundation
import ObjectMapper

/// An object representing a fee applied to an order.
public class WooOrderFee: Mappable {
    
    /// Item ID.
    public var id: WooID?
    
    /// Fee name.
    public var name: String?
    
    /// Tax class of fee.
    public var taxClass: String?
    
    /// Tax status of fee. Options: taxable and none.
    public var taxStatus: WooOrderTaxable?
    
    /// Line total (after discounts).
    public var total: String?
    
    /// Line total tax (after discounts).
    public var totalTax: String?
    
    /// Line taxes. See Order - Taxes properties
    public var taxes: [WooOrderTaxLine]?
    
    /// Meta data. See Order - Meta data properties
    public var metaData: [WooMetaData]?
    
    required public init?(map: Map) { }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        taxClass <- map["tax_class"]
        taxStatus <- map["tax_status"]
        total <- map["total"]
        totalTax <- map["total_tax"]
        taxes <- map["taxes"]
        metaData <- map["meta_data"]
    }
}
