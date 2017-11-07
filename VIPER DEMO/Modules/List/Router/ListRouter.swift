//
//  ListRouter.swift
//  VIPER DEMO
//
//  Created by MMY on 06/11/2017.
//  Copyright © 2017 MMY. All rights reserved.
//

import Foundation
import UIKit

class ListRouter: ListPresenterOutput {
    var presenter: ListPresenter!
    
    func showListView(in window: UIWindow) {
        let view = ListViewController()
        view.output = presenter
        presenter.view = view
        
        window.rootViewController = view
    }
}
