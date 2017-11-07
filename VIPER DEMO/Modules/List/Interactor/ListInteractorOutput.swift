//
//  ListInteractorOutput.swift
//  VIPER DEMO
//
//  Created by MMY on 06/11/2017.
//  Copyright © 2017 MMY. All rights reserved.
//

import Foundation

protocol ListInteractorOutput {
    func didFetchContactData(contacts: Array<Contact>)
}
