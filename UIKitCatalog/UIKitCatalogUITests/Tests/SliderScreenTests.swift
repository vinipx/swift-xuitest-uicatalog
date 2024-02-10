//
//  SliderScreenTests.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 10/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

class SliderScreenTests: BaseTest {
    
    override func setUp() {
        super.setUp()
        HomeScreen(app: app).sliders.tap()
    }
    
    func testSliderScreen_whenOpened_thenElementsAreLoaded() {
        let screen = SliderScreen(app: app)
        XCTAssertTrue(screen.defaultSlider.exists)
        XCTAssertTrue(screen.tintedSlider.exists)
        XCTAssertTrue(screen.customSlider.exists)
        XCTAssertTrue(screen.minMaxSlider.exists)
    }
    
    func testSliderScreen_whenSlidersAreChanged_thenValuesAreKept() {
        let screen = SliderScreen(app: app)
        screen.defaultSlider.adjust(toNormalizedSliderPosition: 0.1)
        XCTAssertTrue(screen.defaultSlider.value as? String == "9%")
        
        screen.tintedSlider.adjust(toNormalizedSliderPosition: 0.3)
        XCTAssertTrue(screen.tintedSlider.value as? String == "30%")
        
        screen.customSlider.adjust(toNormalizedSliderPosition: 0.5)
        XCTAssertTrue(screen.customSlider.value as? String == "49%")
        
        screen.minMaxSlider.adjust(toNormalizedSliderPosition: 1)
        XCTAssertTrue(screen.minMaxSlider.value as? String == "100%")
    }
}
