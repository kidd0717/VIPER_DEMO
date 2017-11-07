//
//  Contact.swift
//  VIPER DEMO
//
//  Created by MMY on 06/11/2017.
//  Copyright © 2017 MMY. All rights reserved.
//

import Foundation
class Contact {
    var name: String!
    var phone: String?
    var address: String?
    init(name: String, phone:String?, address:String?) {
        self.name = name
        self.phone = phone
        self.address = address
    }
}
