//
//  ListViewInput.swift
//  VIPER DEMO
//
//  Created by MMY on 06/11/2017.
//  Copyright © 2017 MMY. All rights reserved.
//

import Foundation

protocol ListViewInput {
    func show(data: Array<ListViewDisplayItem>)
    func showNoData()
}
