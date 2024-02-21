//
//  BaseTest.swift
//  MoneyUITests
//
//  Created by Adem Cooper on 2/18/24.
//  Copyright © 2024 Daniel Springer. All rights reserved.
//

import XCTest

class Logger{
    func log(_ mlog: String){
        NSLog(mlog)
    }
}
public class BaseTest{
    typealias Completion = (() -> Void)?
    let app = XCUIApplication()
    let log = Logger().log
    required init(timeout: TimeInterval = 10, completion: Completion = nil){
        log("waiting \(timeout)s for \(String(describing: self)) existance")
        XCTAssert(rootElement.waitForExistence(timeout: timeout),
            "Page \(String(describing: self))waited, but not loaded")
        completion?()
    }
    var rootElement: XCUIElement{
        fatalError("subclass should override rootElement")
    }
    
    //Button
    func button(_ name: String) -> XCUIElement{
        return app.buttons[name]
    }
    
    //Nav Bar
    func navBar(_ name: String) -> XCUIElement{
        return app.navigationBars[name]
    }
    
    //Secure Fields
    func secureField(_ name: String) -> XCUIElement{
        return app.secureTextFields[name]
    }
    
    //Text Fields
    func textField(_ name: String) -> XCUIElement{
        return app.textFields[name]
    }
    
    //Text Views
    func textView(_ name: String) -> XCUIElement{
        return app.textViews[name]
    }
    
    //Text Views
    func text(_ name: String) -> XCUIElement{
        return app.staticTexts[name]
    }
    
    //Images
    func image(_ name: String) -> XCUIElement{
        return app.images[name]
    }
}
