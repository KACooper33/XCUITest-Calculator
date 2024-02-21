//
//  HelpPage.swift
//  MoneyUITests
//
//  Created by Adem Cooper on 2/20/24.
//  Copyright © 2024 Daniel Springer. All rights reserved.
//

import XCTest

public class HelpPage: BaseTest{
    override var rootElement: XCUIElement {
        return text("Motivator - Money Counter v. 1.23")
    }
    
    // Page Elements
    lazy var flyoutHeader = text("Motivator - Money Counter v. 1.23")
    lazy var emailLabel = button("Email Me")
    //lazy var emailImage = image("envelope.badge")
    lazy var tutorialLabel = button("Tutorial")
    //lazy var tutorialImage = image("info.circle")
    lazy var leaveReviewLabel = button("Leave a review")
    //lazy var leaveReviewImage = image("hand.thumbsup")
    lazy var tellFriendLabel = button("Tell a friend")
    //lazy var tellFriendImage = image("heart")
    lazy var moreByDevLabel = button("More By Daniel Springer")
    //lazy var moreByDevImage = text("apps.iphone")

    
    //Methods
    func VerifyFlyoutHeaderExists(completion: Completion = nil) -> Bool {
        log("Verifying the FlyoutHeader exists")
        return flyoutHeader.exists
    }
    
    func VerifyTutorialLabelExists(completion: Completion = nil) -> Bool {
        log("Verifying the Tutorial Label exists")
        return tutorialLabel.exists
    }
    
    @discardableResult
    func TapTutorialButton(completion: Completion = nil) -> Self {
        log("Tapping the Tutorial button")
        tutorialLabel.tap()
        return self
    }
    
    func VerifyLeaveReviewLabelExists(completion: Completion = nil) -> Bool {
        log("Verifying the Leave Review Label exists")
        return leaveReviewLabel.exists
    }
    
    func VerifyTellAFriendLabelExists(completion: Completion = nil) -> Bool {
        log("Verifying the Tell A Friend Label exists")
        return tellFriendLabel.exists
    }
    
    func VerifyMoreAboutDevLabelExists(completion: Completion = nil) -> Bool {
        log("Verifying the More About Dev Label exists")
        return moreByDevLabel.exists
    }
    
    func VerifyEmailLabelExists(completion: Completion = nil) -> Bool {
        log("Verifying the Email button exists")
        return emailLabel.exists
    }

//    @discardableResult
//    func VerifyEmailImageExists(completion: Completion = nil) -> Self {
//        log("Verifying the Email Image exists")
//        XCTAssert(emailImage.exists, "Failed to find the email image: \(emailImage)")
//        return self
//    }
    
}
