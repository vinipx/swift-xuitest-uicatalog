//
//  AlertViewsScreen.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 07/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

class AlertViewsScreen {
    let app: XCUIApplication
    let okayCancel: XCUIElement
    let simple: XCUIElement
    let other: XCUIElement
    let textEntry: XCUIElement
    let secureTextEntry: XCUIElement
    let confirmCancel: XCUIElement
    let destructive: XCUIElement
    let backButton: XCUIElement
    
    init(app: XCUIApplication) {
        self.app = app
        simple = app.staticTexts["Simple"]
        okayCancel = app.staticTexts["Okay / Cancel"]
        other = app.staticTexts["Other"]
        textEntry = app.staticTexts["Text Entry"]
        secureTextEntry = app.staticTexts["Secure Text Entry"]
        confirmCancel = app.staticTexts["Confirm / Cancel"]
        destructive = app.staticTexts["Destructive"]
        backButton = app.buttons["UIKitCatalog"]
    }
    
}
