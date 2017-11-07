//
//  ListBuilder.swift
//  VIPER DEMO
//
//  Created by MMY on 06/11/2017.
//  Copyright © 2017 MMY. All rights reserved.
//

import Foundation
class ListBuilder {
    class func build() -> ListRouter {
        let router = ListRouter()
        let presenter = ListPresenter()
        let interactor = ListInterator()
        let contactManager = ContactManager()
        
        router.presenter = presenter
        
        presenter.output = router
        presenter.interactor = interactor
        
        interactor.output = presenter
        interactor.contactManager = contactManager
        
        return router
    }
}
