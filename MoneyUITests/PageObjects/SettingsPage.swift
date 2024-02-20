//
//  SettingsPage.swift
//  MoneyUITests
//
//  Created by Adem Cooper on 2/18/24.
//  Copyright © 2024 Daniel Springer. All rights reserved.
//

import XCTest

public class SettingsPage: BaseTest{
    override var rootElement: XCUIElement {
        return app.buttons["M"]
    }
    
    // Page Elements
    lazy var mButton = app.buttons["M"]
    lazy var wButton = app.buttons["W"]
    lazy var doneButton = app.buttons["Done"]

    @discardableResult
    func tapMButton(completion: Completion = nil) -> Self {
        log("tap the M button")
        mButton.tap()
        return self
    }
    
    @discardableResult
    func tapWButton(completion: Completion = nil) -> Self {
        log("tap the W button")
        wButton.tap()
        return self
    }
    
    @discardableResult
    func tapDoneButton(completion: Completion = nil) -> Self {
        log("tap the Done button")
        doneButton.tap()
        return self
    }
    
}
