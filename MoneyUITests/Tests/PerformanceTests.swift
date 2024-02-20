//
//  PerformanceTests.swift
//  MoneyUITests
//
//  Created by Adem Cooper on 2/20/24.
//  Copyright © 2024 Daniel Springer. All rights reserved.
//

import XCTest

final class PerformanceTests: XCTestCase{
    
    override func setUp(){
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        
    }
    
    func testSampleNoMetrics(){
        measure{
            WorkdayTests().testSetWorkweekToStandard9To5()
        }
    }
    
    func testSampleWithMetrics(){
        let metrics: [XCTMetric] = [XCTMemoryMetric(), XCTStorageMetric(), XCTClockMetric()]
        let measureOptions = XCTMeasureOptions.default
        measureOptions.iterationCount = 3
        measure(metrics: metrics, options: measureOptions) {
            WorkdayTests().testSetWorkweekToStandard9To5()
        }
    }
}
