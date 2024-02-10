//
//  BaseScreen.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 10/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

class BaseScreen {
    let app: XCUIApplication
    let backButton: XCUIElement
    
    init(app: XCUIApplication) {
        self.app = app
    }
}
