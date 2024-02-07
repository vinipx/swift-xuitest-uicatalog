//
//  CatalogHome.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 07/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

class Home: BaseScreen {
    private lazy var activityIndicators = app.staticTexts["Activity Indicators"]
    private lazy var alertViews = app.staticTexts["Alert View"]
    private lazy var buttons = app.staticTexts["Buttons"]
    private lazy var datePicker = app.staticTexts[ "Date Picker"]
    private lazy var imageView = app.staticTexts["Image View"]
    private lazy var pageControl = app.staticTexts["Page Control"]
    private lazy var pickerView = app.staticTexts["Picker View"]
    private lazy var progressViews = app.staticTexts["Progress Views"]
    private lazy var search = app.staticTexts["Search"]
    private lazy var segmentedControls = app.staticTexts["Segmented Controls"]
    private lazy var sliders = app.staticTexts["Sliders"]
    private lazy var stackViews = app.staticTexts["Stack Views"]
    private lazy var steppers = app.staticTexts["Steppers"]
    private lazy var textFields = app.staticTexts["Text Fields"]
    private lazy var textView = app.staticTexts["Text View"]
    private lazy var toolbars = app.staticTexts["Toolbars"]
    private lazy var webView = app.staticTexts["Web View"]
    
    func validateElementsAreLoaded() {
        XCTAssertTrue(activityIndicators.exists)
        XCTAssertTrue(alertViews.exists)
        XCTAssertTrue(buttons.exists)
        XCTAssertTrue(datePicker.exists)
        XCTAssertTrue(imageView.exists)
        XCTAssertTrue(pageControl.exists)
        XCTAssertTrue(pickerView.exists)
        XCTAssertTrue(progressViews.exists)
        XCTAssertTrue(search.exists)
        XCTAssertTrue(segmentedControls.exists)
        XCTAssertTrue(sliders.exists)
        XCTAssertTrue(stackViews.exists)
        XCTAssertTrue(steppers.exists)
        XCTAssertTrue(textFields.exists)
        XCTAssertTrue(toolbars.exists)
        XCTAssertTrue(webView.exists)
    }
    
}
