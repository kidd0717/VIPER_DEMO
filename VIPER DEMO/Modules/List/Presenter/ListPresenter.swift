//
//  ListPresenter.swift
//  VIPER DEMO
//
//  Created by MMY on 06/11/2017.
//  Copyright © 2017 MMY. All rights reserved.
//

import Foundation

class ListPresenter: ListPresenterInput, ListViewOutput, ListInteractorOutput {
    var output: ListPresenterOutput!
    var view: ListViewInput!
    var interactor: ListInteratorInput!
    
    //MARK: ListViewOutput
    func fetchData() {
        interactor.fetchContactData()
    }
    
    //MARK: ListInteractorOutput
    func didFetchContactData(contacts: Array<Contact>) {
        if contacts.count == 0 {
            view.showNoData()
        } else {
            let displayItems = contacts.map { (contact) -> ListViewDisplayItem in
                let item = ListViewDisplayItem()
                item.name = contact.name
                item.phone = contact.phone ?? ""
                return item
            }
            
            view.show(data: displayItems)
        }
    }
}
