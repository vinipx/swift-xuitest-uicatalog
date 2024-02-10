//
//  PickerWheelScreenTests.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 08/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

class PickerWheelScreenTests: BaseTest {
    
    override func setUp() {
        super.setUp()
        HomeScreen(app: app).pickerView.tap()
    }
    
    func testPickerViewScreen_whenOpened_thenElementsAreLoaded() {
        let screen = PickerViewScreen(app: app)
        XCTAssertTrue(screen.firstWheel.exists)
        XCTAssertTrue(screen.secondWheel.exists)
        XCTAssertTrue(screen.thirdWheel.exists)
        XCTAssertTrue(screen.backButton.exists)
    }
    
    func testPickerViewScreen_whenFirstWheelIsSet_thenColorIsChanged() {
        let screen = PickerViewScreen(app: app)
        //let actualColorValue = screen.
        screen.firstWheel.adjust(toPickerWheelValue: "40")
        screen.secondWheel.adjust(toPickerWheelValue: "200")
        screen.thirdWheel.adjust(toPickerWheelValue: "165")
        XCTAssertTrue(screen.firstWheel.value as? String == "40")
        XCTAssertTrue(screen.secondWheel.value as? String == "200")
        XCTAssertTrue(screen.thirdWheel.value as? String == "165")
    }
}
