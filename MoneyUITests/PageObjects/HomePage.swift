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
        return app.buttons["Help"]
    }
    
    // Page Elements
    lazy var helpButton = app.buttons["Help"]
    lazy var settingsButton = app.buttons["Settings"]

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
}
