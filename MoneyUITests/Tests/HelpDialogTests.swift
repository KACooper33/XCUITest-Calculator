//
//  HelpDialogTests.swift
//  MoneyUITests
//
//  Created by Adem Cooper on 2/21/24.
//  Copyright © 2024 Daniel Springer. All rights reserved.
//

import XCTest

final class HelpDialogTests: XCTestCase{
    
    override func setUp(){
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        
    }
    
    /// Opens the help dialog and verifies the expected options are listed
    /// Future enhancement: I'd like to also check that the images are present
    func testHelpDialogContents(){
        HomePage()
            .helpButton.tap()
        XCTAssertTrue(HelpPage().VerifyFlyoutHeaderExists(), "Failed to find the Flyout Header")
        XCTAssertTrue(HelpPage().VerifyEmailLabelExists(), "Failed to find the Email button")
        XCTAssertTrue(HelpPage().VerifyTutorialLabelExists(), "Failed to find the Tutorial button")
        XCTAssertTrue(HelpPage().VerifyLeaveReviewLabelExists(), "Failed to find the Leave A Review button")
        XCTAssertTrue(HelpPage().VerifyTellAFriendLabelExists(), "Failed to find the Tell A Friend button")
        XCTAssertTrue(HelpPage().VerifyMoreAboutDevLabelExists(), "Failed to find the More About Dev button")
    }
    
    /// Testcase tests the flow from the home page, to the Tutorial page via the help dialog and back to the home page.
    func testViewTutorialViaHelp(){
        HomePage()
            .helpButton.tap()
        HelpPage()
            .TapTutorialButton()
        XCTAssertTrue(TutorialPage().VerifyWelcomeLabelExists(), "Failed to find the Welcome Label")
        TutorialPage()
            .TapTakeMeThereButton()
        XCTAssertTrue(SettingsPage().VerifySettingsLabelExists(), "Failed to find the Settings Label")
        SettingsPage()
            .TapDoneButton()
    }
}
