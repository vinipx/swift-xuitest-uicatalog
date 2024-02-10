//
//  PickerViewScreen.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 08/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

class PickerViewScreen {
    let app: XCUIApplication
    let firstWheel: XCUIElement
    let secondWheel: XCUIElement
    let thirdWheel: XCUIElement
    let backButton: XCUIElement
    
    init(app: XCUIApplication) {
        self.app = app
        firstWheel = app.pickerWheels["Red color component value"]
        secondWheel = app.pickerWheels["Green color component value"]
        thirdWheel = app.pickerWheels["Blue color component value"]
        backButton = app.buttons["UIKitCatalog"]
    }
    
}
