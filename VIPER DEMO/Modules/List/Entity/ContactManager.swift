//
//  ContactManager.swift
//  VIPER DEMO
//
//  Created by MMY on 06/11/2017.
//  Copyright © 2017 MMY. All rights reserved.
//

import Foundation

class ContactManager {
    func getContacts() -> Array<Contact> {
        return [Contact(name: "Barry", phone: "1234567", address: "Taipei"),
                Contact(name: "Lily", phone: "2235345132", address: "高雄")]
    }
}
