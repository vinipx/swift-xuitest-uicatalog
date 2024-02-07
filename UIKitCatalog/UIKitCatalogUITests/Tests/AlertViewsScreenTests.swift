//
//  AlertViewsScreen.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 07/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

class AlertViewsScreenTests: BaseTest {
    
    let homeScreen = HomeScreen()
    
    func testHomeScreen_whenHomeScreenIsOpened_thenElementsAreLoaded() {
        homeScreen.checkElements()
    }
}
