//
//  SliderScreen.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 10/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

class SliderScreen: BaseScreen {
    let defaultSlider: XCUIElement
    let tintedSlider: XCUIElement
    let customSlider: XCUIElement
    let minMaxSlider: XCUIElement
    
    override init(app: XCUIApplication) {
        defaultSlider = app.sliders.element(boundBy: 0)
        tintedSlider = app.sliders.element(boundBy: 1)
        customSlider = app.sliders.element(boundBy: 2)
        minMaxSlider = app.sliders.element(boundBy: 3)
        super.init(app: app)
    }
}
