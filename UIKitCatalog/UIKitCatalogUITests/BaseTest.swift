//
//  BaseClass.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 07/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

public class BaseTest : XCTestCase {
    
    lazy var app = XCUIApplication()
    
    public override func setUp() {
        continueAfterFailure = false
        app.launch()
        
    }
    
    public override func tearDown() {
        let screenshot = XCUIScreen.main.screenshot()
        let fullScreenshotAttachment = XCTAttachment(screenshot: screenshot)
        fullScreenshotAttachment.lifetime = .deleteOnSuccess
        add(fullScreenshotAttachment)
        app.terminate()
    }
}
