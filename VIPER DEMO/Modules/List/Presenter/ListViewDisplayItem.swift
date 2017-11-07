//
//  ListViewDisplayItem.swift
//  VIPER DEMO
//
//  Created by MMY on 06/11/2017.
//  Copyright © 2017 MMY. All rights reserved.
//

import Foundation
class ListViewDisplayItem: Equatable {
    var name:String!
    var phone:String!
    
    static func ==(lhs: ListViewDisplayItem, rhs: ListViewDisplayItem) -> Bool {
        return lhs.name == rhs.name && lhs.phone == rhs.phone
    }
}
