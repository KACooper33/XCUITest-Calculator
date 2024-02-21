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
        return text("Settings")
    }
    
    // Page Elements
    lazy var settingsLabel = text("Settings")
    lazy var mButton = button("M")
    lazy var wButton = button("W")
    lazy var doneButton = button("Done")

    @discardableResult
    func TapMButton(completion: Completion = nil) -> Self {
        log("tap the M button")
        mButton.tap()
        return self
    }
    
    @discardableResult
    func TapWButton(completion: Completion = nil) -> Self {
        log("tap the W button")
        wButton.tap()
        return self
    }
    
    @discardableResult
    func TapDoneButton(completion: Completion = nil) -> Self {
        log("tap the Done button")
        doneButton.tap()
        return self
    }
    
    func VerifySettingsLabelExists(completion: Completion = nil) -> Bool {
        log("Verifying the Settings label exists")
        return settingsLabel.exists
    }
    
}
