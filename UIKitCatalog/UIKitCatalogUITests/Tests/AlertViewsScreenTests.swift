//
//  AlertViewsScreen.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 07/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

class AlertViewsScreenTests: BaseTest {
    
    override func setUp() {
        super.setUp()
        HomeScreen(app: app).alertViews.tap()
    }
    
    func testAlertViewsScreen_whenOpened_thenElementsAreLoaded() {
        let screen = AlertViewsScreen(app: app)
        XCTAssertTrue(screen.simple.exists)
        XCTAssertTrue(screen.okayCancel.exists)
        XCTAssertTrue(screen.other.exists)
        XCTAssertTrue(screen.textEntry.exists)
        XCTAssertTrue(screen.secureTextEntry.exists)
        XCTAssertTrue(screen.confirmCancel.exists)
        XCTAssertTrue(screen.destructive.exists)
        XCTAssertTrue(screen.backButton.exists)
    }
    
    func testAlertViewsScreen_whenSimpleIsSelected_thenShortTitleIsBestAlertIsDisplayed() {
        let screen = AlertViewsScreen(app: app)
        screen.simple.tap()
        let alert = screen.app.alerts["A Short Title Is Best"]
        XCTAssertTrue(alert.waitForExistence(timeout: 1))
        screen.app.buttons["OK"].tap()
        XCTAssertTrue(screen.app.navigationBars["Alert Views"].isEnabled)
    }
    
    func testAlertViewsScreen_whenOkayCancelIsSelected_andCancelIsHit_thenShortTitleIsBestAlertIsDisplayed() {
        let screen = AlertViewsScreen(app: app)
        
        screen.okayCancel.tap()
        XCTAssertTrue(screen.app.alerts["A Short Title Is Best"].waitForExistence(timeout: 1))
        screen.app.buttons["Cancel"].tap()
        XCTAssertTrue(screen.app.navigationBars["Alert Views"].isEnabled)
    }
    
    func testAlertViewsScreen_whenOkayCancelIsSelected_andOkIsHit_thenReturnsToAlertViews() {
        let screen = AlertViewsScreen(app: app)
        
        screen.okayCancel.tap()
        XCTAssertTrue(screen.app.alerts["A Short Title Is Best"].waitForExistence(timeout: 1))
        screen.app.buttons["OK"].tap()
        XCTAssertTrue(screen.app.navigationBars["Alert Views"].isEnabled)
    }
    
    func testAlertViewsScreen_whenOtherIsSelected_thenAlertIsDisplayed() {
        let alertLabel = "A Short Title Is Best"
        let screen = AlertViewsScreen(app: app)
        
        screen.other.tap()
        XCTAssertTrue(screen.app.alerts[alertLabel].waitForExistence(timeout: 1))
        XCTAssertTrue(screen.app.alerts[alertLabel].buttons["Choice One"].exists)
        XCTAssertTrue(screen.app.alerts[alertLabel].buttons["Choice Two"].exists)
        XCTAssertTrue(screen.app.alerts[alertLabel].buttons["Cancel"].exists)
    }
    
    func testAlertViewsScreen_whenOtherIsSelected_andChoiceOneIsHit_thenReturnsToAlertViews() {
        let screen = AlertViewsScreen(app: app)
        screen.other.tap()
        XCTAssertTrue(screen.app.alerts["A Short Title Is Best"].waitForExistence(timeout: 1))
        screen.app.buttons["Choice One"].tap()
        XCTAssertTrue(screen.app.navigationBars["Alert Views"].isEnabled)
    }
    
    func testAlertViewsScreen_whenOtherIsSelected_andChoiceTwoIsHit_thenReturnsToAlertViews() {
        let screen = AlertViewsScreen(app: app)
        screen.other.tap()
        XCTAssertTrue(screen.app.alerts["A Short Title Is Best"].waitForExistence(timeout: 1))
        screen.app.buttons["Choice Two"].tap()
        XCTAssertTrue(screen.app.navigationBars["Alert Views"].isEnabled)
    }
    
    func testAlertViewsScreen_whenOtherIsSelected_andCancelIsHit_thenReturnsToAlertViews() {
        let screen = AlertViewsScreen(app: app)
        screen.other.tap()
        XCTAssertTrue(screen.app.alerts["A Short Title Is Best"].waitForExistence(timeout: 1))
        screen.app.buttons["Cancel"].tap()
        XCTAssertTrue(screen.app.navigationBars["Alert Views"].isEnabled)
    }
    
    func testAlertViewsScreen_whenTextEntryIsSelected_andTextIsTyped_andOkIsHit_thenReturnsToAlertViews() {
        let screen = AlertViewsScreen(app: app)
        screen.textEntry.tap()
        XCTAssertTrue(screen.app.alerts["A Short Title Is Best"].waitForExistence(timeout: 1))
        screen.app.typeText("type some text and click OK button")
        screen.app.buttons["OK"].tap()
        XCTAssertTrue(screen.app.navigationBars["Alert Views"].isEnabled)
    }
    
    func testAlertViewsScreen_whenTextEntryIsSelected_andTextIsTyped_andCancelIsHit_thenReturnsToAlertViews() {
        let screen = AlertViewsScreen(app: app)
        screen.textEntry.tap()
        XCTAssertTrue(screen.app.alerts["A Short Title Is Best"].waitForExistence(timeout: 1))
        screen.app.typeText("another text is typed and click Cancel button")
        screen.app.buttons["Cancel"].tap()
        XCTAssertTrue(screen.app.navigationBars["Alert Views"].isEnabled)
    }
    
    func testAlertViewsScreen_whenSecureTextEntryIsSelected_thenAlertIsDisplayed() {
        let screen = AlertViewsScreen(app: app)
        screen.secureTextEntry.tap()
        let alertLabel = "A Short Title Is Best"
        XCTAssertTrue(screen.app.alerts[alertLabel].waitForExistence(timeout: 1))
        XCTAssertTrue(screen.app.alerts[alertLabel].buttons["OK"].exists)
        XCTAssertTrue(screen.app.alerts[alertLabel].buttons["Cancel"].exists)
    }
    
    func testAlertViewsScreen_whenSecureTextEntryIsSelected_andTextIsTyped_andCancelIsHit_thenReturnsToAlertViews() {
        let screen = AlertViewsScreen(app: app)
        screen.textEntry.tap()
        XCTAssertTrue(screen.app.alerts["A Short Title Is Best"].waitForExistence(timeout: 1))
        screen.app.typeText("secured input shall be masked")
        screen.app.buttons["Cancel"].tap()
        XCTAssertTrue(screen.app.navigationBars["Alert Views"].isEnabled)
    }
    
    func testAlertViewsScreen_whenSecureTextEntryIsSelected_andTextIsTyped_andOkIsHit_thenReturnsToAlertViews() {
        let screen = AlertViewsScreen(app: app)
        screen.textEntry.tap()
        XCTAssertTrue(screen.app.alerts["A Short Title Is Best"].waitForExistence(timeout: 1))
        screen.app.typeText("secured input shall be masked")
        screen.app.buttons["OK"].tap()
        XCTAssertTrue(screen.app.navigationBars["Alert Views"].isEnabled)
    }
    
    func testAlertViewsScreen_whenConfirmCancelIsSelected_thenAlertIsDisplayed() {
        let screen = AlertViewsScreen(app: app)
        screen.confirmCancel.tap()
        XCTAssertTrue(screen.app.buttons["Confirm"].exists)
        XCTAssertTrue(screen.app.buttons["Cancel"].exists)
    }
    
    func testAlertViewsScreen_whenConfirmCancelIsSelected_andConfirmIsHit_thenReturnsToAlertViews() {
        let screen = AlertViewsScreen(app: app)
        screen.confirmCancel.tap()
        screen.app.buttons["Confirm"].tap()
        XCTAssertTrue(screen.app.navigationBars["Alert Views"].isEnabled)
    }
    
    func testAlertViewsScreen_whenConfirmCancelIsSelected_andCancelIsHit_thenReturnsToAlertViews() {
        let screen = AlertViewsScreen(app: app)
        screen.confirmCancel.tap()
        screen.app.buttons["Cancel"].tap()
        XCTAssertTrue(screen.app.navigationBars["Alert Views"].isEnabled)
    }
    
    func testAlertViewsScreen_whenDestructiveIsSelected_thenAlertIsDisplayed() {
        let screen = AlertViewsScreen(app: app)
        screen.destructive.tap()
        XCTAssertTrue(screen.app.buttons["Destructive Choice"].exists)
        XCTAssertTrue(screen.app.buttons["Safe Choice"].exists)
    }
    
    func testAlertViewsScreen_whenBackButtonIsSelected_thenHomeScreenIsDisplayed() {
        let screen = AlertViewsScreen(app: app)
        screen.backButton.tap()
        XCTAssertTrue(app.navigationBars["UIKitCatalog"].isEnabled)
    }
}
