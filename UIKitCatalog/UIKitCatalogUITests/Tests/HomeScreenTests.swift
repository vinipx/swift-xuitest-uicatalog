//
//  HomeTest.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 07/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

class HomeScreenTests: BaseTest {
    
    func testHomeScreen_whenOpened_thenElementsAreLoaded() {
        let screen = HomeScreen(app: app)
        XCTAssertTrue(screen.activityIndicators.exists)
        XCTAssertTrue(screen.alertViews.exists)
        XCTAssertTrue(screen.buttons.exists)
        XCTAssertTrue(screen.datePicker.exists)
        XCTAssertTrue(screen.imageView.exists)
        XCTAssertTrue(screen.pageControl.exists)
        XCTAssertTrue(screen.pickerView.exists)
        XCTAssertTrue(screen.progressViews.exists)
        XCTAssertTrue(screen.search.exists)
        XCTAssertTrue(screen.segmentedControls.exists)
        XCTAssertTrue(screen.sliders.exists)
        XCTAssertTrue(screen.stackViews.exists)
        XCTAssertTrue(screen.steppers.exists)
        XCTAssertTrue(screen.textFields.exists)
        XCTAssertTrue(screen.toolbars.exists)
        XCTAssertTrue(screen.webView.exists)
    }
}
