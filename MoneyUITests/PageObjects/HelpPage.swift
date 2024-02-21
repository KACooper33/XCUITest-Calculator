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
        return button("Help")
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

    @discardableResult
    func VerifyFlyoutHeaderExists(completion: Completion = nil) -> Self {
        log("Verifying the FlyoutHeader exists")
        XCTAssert(flyoutHeader.exists, "Failed to find the FlyoutHeader: \(flyoutHeader)")
        return self
    }
    
    @discardableResult
    func VerifyTutorialLabelExists(completion: Completion = nil) -> Self {
        log("Verifying the Tutorial Label exists")
        XCTAssert(tutorialLabel.exists, "Failed to find the Tutorial label: \(tutorialLabel)")
        return self
    }
    
    @discardableResult
    func VerifyLeaveReviewLabelExists(completion: Completion = nil) -> Self {
        log("Verifying the Leave Review Label exists")
        XCTAssert(leaveReviewLabel.exists, "Failed to find the leave review label: \(leaveReviewLabel)")
        return self
    }
    
    @discardableResult
    func VerifyTellAFriendLabelExists(completion: Completion = nil) -> Self {
        log("Verifying the Tell A Friend Label exists")
        XCTAssert(tellFriendLabel.exists, "Failed to find the email label: \(tellFriendLabel)")
        return self
    }
    
    @discardableResult
    func VerifyMoreAboutDevLabelExists(completion: Completion = nil) -> Self {
        log("Verifying the More About Dev Label exists")
        XCTAssert(moreByDevLabel.exists, "Failed to find the More about the dev label: \(moreByDevLabel)")
        return self
    }
    
    @discardableResult
    func VerifyEmailLabelExists(completion: Completion = nil) -> Self {
        log("Verifying the Email Label exists")
        XCTAssert(emailLabel.exists, "Failed to find the email label: \(emailLabel)")
        return self
    }

//    @discardableResult
//    func VerifyEmailImageExists(completion: Completion = nil) -> Self {
//        log("Verifying the Email Image exists")
//        XCTAssert(emailImage.exists, "Failed to find the email image: \(emailImage)")
//        return self
//    }
    
}
