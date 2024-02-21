//
//  TutorialPage.swift
//  MoneyUITests
//
//  Created by Adem Cooper on 2/21/24.
//  Copyright © 2024 Daniel Springer. All rights reserved.
//

import XCTest

public class TutorialPage: BaseTest{
    override var rootElement: XCUIElement {
        return text("Welcome")
    }
    
    // Page Elements
    lazy var welcomeLabel = text("Welcome")
    lazy var takeMeThereButton = button("Take Me There")

    //Methods
    func VerifyWelcomeLabelExists(completion: Completion = nil) -> Bool {
        log("Verifying the Welcome Label exists")
        return welcomeLabel.exists
    }
    
    //Methods
    func VerifyTakeMeThereButtonExists(completion: Completion = nil) -> Bool {
        log("Verifying the Take Me There button exists")
        return takeMeThereButton.exists
    }
    
    @discardableResult
    func TapTakeMeThereButton(completion: Completion = nil) -> Self {
        log("Tapping the Take Me There button")
        takeMeThereButton.tap()
        return self
    }
}
