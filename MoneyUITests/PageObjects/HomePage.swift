//
//  HomePage.swift
//  MoneyUITests
//
//  Created by Adem Cooper on 2/18/24.
//  Copyright © 2024 Daniel Springer. All rights reserved.
//

import XCTest

public class HomePage: BaseTest{
    override var rootElement: XCUIElement {
        return button("Help")
    }
    
    // Page Elements
    lazy var helpButton = button("Help")
    lazy var settingsButton = button("Settings")
    lazy var moneyMakeableLabel = text("moneyMakeableLabel")
    lazy var timeWorkableLabel = text("timeWorkableLabel")


    
    // Methods
    @discardableResult
    func tapHelp(completion: Completion = nil) -> Self {
        log("tap the Help button")
        helpButton.tap()
        return self
    }
    
    @discardableResult
    func tapSettings(completion: Completion = nil) -> Self {
        log("tap the Settings button")
        settingsButton.tap()
        return self
    }
    
    func VerifyHelpLabelExists(completion: Completion = nil) -> Bool {
        log("Verifying the Help label exists")
        return helpButton.exists
    }
    
    @discardableResult
    func VerifyMakeableMoneyValueGreaterThan(completion: Completion = nil, expectedValue: Double) -> Self {
        log("Verifying MakeableMoney Label is greater than \(expectedValue)")
        
        var rawvalue = moneyMakeableLabel.label
        rawvalue.removeFirst()
        let value = Double(rawvalue) ?? 0
        XCTAssert(value > expectedValue, "MakeableMoney \(value) was not greater than \(expectedValue)")
        return self
    }
    
}
