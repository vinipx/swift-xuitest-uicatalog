//
//  CatalogHome.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 07/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

class HomeScreen {
    let app: XCUIApplication
    let activityIndicators: XCUIElement
    let alertViews: XCUIElement
    let buttons: XCUIElement
    let datePicker: XCUIElement
    let imageView: XCUIElement
    let pageControl: XCUIElement
    let pickerView: XCUIElement
    let progressViews: XCUIElement
    let search: XCUIElement
    let segmentedControls: XCUIElement
    let sliders: XCUIElement
    let stackViews: XCUIElement
    let steppers: XCUIElement
    let textFields: XCUIElement
    let textView: XCUIElement
    let toolbars: XCUIElement
    let webView: XCUIElement
    
    init(app: XCUIApplication) {
        self.app = app
        activityIndicators = app.staticTexts["Activity Indicators"]
        alertViews = app.staticTexts["Alert Views"]
        buttons = app.staticTexts["Buttons"]
        datePicker = app.staticTexts[ "Date Picker"]
        imageView = app.staticTexts["Image View"]
        pageControl = app.staticTexts["Page Control"]
        pickerView = app.staticTexts["Picker View"]
        progressViews = app.staticTexts["Progress Views"]
        search = app.staticTexts["Search"]
        segmentedControls = app.staticTexts["Segmented Controls"]
        sliders = app.staticTexts["Sliders"]
        stackViews = app.staticTexts["Stack Views"]
        steppers = app.staticTexts["Steppers"]
        textFields = app.staticTexts["Text Fields"]
        textView = app.staticTexts["Text View"]
        toolbars = app.staticTexts["Toolbars"]
        webView = app.staticTexts["Web View"]
    }
    
}
