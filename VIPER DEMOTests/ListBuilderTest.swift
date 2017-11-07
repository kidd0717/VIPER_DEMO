//
//  ListBuilderTest.swift
//  VIPER DEMOTests
//
//  Created by MMY on 07/11/2017.
//  Copyright © 2017 MMY. All rights reserved.
//

import XCTest
@testable import VIPER_DEMO

class ListBuilderTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testThatBuilderWouldBuildDenpendencyCorrectly() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let router = ListBuilder.build()
        XCTAssertTrue(router.presenter != nil)
        
        let presenter = router.presenter!
        
        XCTAssertTrue(presenter.output is ListRouter)
        XCTAssertTrue(presenter.interactor is ListInterator)
        
        let interactor = presenter.interactor as! ListInterator
        XCTAssertTrue(interactor.output is ListPresenter)
        XCTAssertTrue(interactor.contactManager != nil)
    }
    
}
