//
//  WorkdayTests.swift
//  MoneyUITests
//
//  Created by Adem Cooper on 2/18/24.
//  Copyright © 2024 Daniel Springer. All rights reserved.
//

import XCTest

final class WorkdayTests: XCTestCase{
    
    override func setUp(){
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
    }
    
    /// Basic test that opens the home page and verifies the makeable money value is greater than 50
    /// This test should be replaced with better ones soon
    func testSetWorkweekToStandard9To5(){
        HomePage()
            .VerifyMakeableMoneyValueGreaterThan(expectedValue: 50)
    }
}

