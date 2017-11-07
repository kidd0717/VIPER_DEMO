//
//  ListInteractor.swift
//  VIPER DEMO
//
//  Created by MMY on 06/11/2017.
//  Copyright © 2017 MMY. All rights reserved.
//

import Foundation

class ListInterator: ListInteratorInput {
    var output: ListInteractorOutput!
    var contactManager: ContactManager!
    
    func fetchContactData() {
        output.didFetchContactData(contacts: contactManager.getContacts())
    }
}
