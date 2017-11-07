//
//  ListPresenterTest.swift
//  VIPER DEMOTests
//
//  Created by MMY on 07/11/2017.
//  Copyright © 2017 MMY. All rights reserved.
//

import XCTest
@testable import VIPER_DEMO

class ListPresenterTest: XCTestCase {
    var presenter: ListPresenter!
    var view: MockView!
    var interactor: MockInteractor!
    override func setUp() {
        super.setUp()
        
        presenter = ListPresenter()
        view = MockView()
        interactor = MockInteractor()
        
        presenter.view = view
        presenter.interactor = interactor
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testThatPresenterHandleFetchDataEvent() {
        presenter.fetchData()
        XCTAssertTrue(interactor.isFetchContactDataCalled)
    }
    
    func testThatPresenterHandleDidFetchDataEventWithData() {
        presenter.didFetchContactData(contacts: [Contact(name: "aaa", phone: "123", address: "bbb")])
        let displayItem = ListViewDisplayItem()
        displayItem.name = "aaa"
        displayItem.phone = "123"
        XCTAssertTrue(view.displayData == [displayItem])
        XCTAssertTrue(view.isShowNoDataCalled == false)
    }
    
    func testThatPresenterHandleDidFetchDataEventWithNoData() {
        presenter.didFetchContactData(contacts: [])
        XCTAssertTrue(view.isShowNoDataCalled)
    }
   
    class MockView: ListViewInput {
        var displayData: Array <ListViewDisplayItem> = Array()
        var isShowNoDataCalled = false
        
        func show(data: Array<ListViewDisplayItem>) {
            displayData = data
        }
        
        func showNoData() {
            isShowNoDataCalled = true
        }
    }
    
    class MockInteractor: ListInteratorInput {
        var isFetchContactDataCalled = false
        
        func fetchContactData() {
            isFetchContactDataCalled = true
        }
    }
}
