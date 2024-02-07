//
//  BaseClass.swift
//  UIKitCatalogUITests
//
//  Created by Vinicius Fagundes on 07/02/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

public class BaseTest : XCTestCase {
    private var baseScreen = BaseScreen()
    
    lazy var app = baseScreen.app
    
    open override func setUp() {
        continueAfterFailure = false
        app.launch()
        
    }
    
    open override func tearDown() {
        app.terminate()
    }
}
