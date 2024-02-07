import XCTest

final class UIKitCatalogUIBasicElementsTests: BaseClass {
    
    func testSimpleNavigationBackandForth() throws {
        app.staticTexts["Alert Views"].tap()
        app.staticTexts["Simple"].tap()
        app.buttons["OK"].tap()
        app.staticTexts["Okay / Cancel"].tap()
        app.buttons["Cancel"].tap()
        app.buttons["UIKitCatalog"].tap()
        app.staticTexts["Alert Views"].tap()
        app.buttons["UIKitCatalog"].tap()
        XCTAssertTrue(app.label == "UIKitCatalog")
    }
    
    func testCoordinates() {
        app.windows.firstMatch.coordinate(withNormalizedOffset:
                                            CGVector(dx: 0.5, dy: 0.5)).tap()
        app.windows.firstMatch.coordinate(withNormalizedOffset:
                                            CGVector(dx: 0.10, dy: 0.10)).tap()
    }
    
    func testSearchFields() {
        let inputValue = "vini peixoto"
        app.staticTexts["Search"].tap()
        app.staticTexts["Default"].tap()
        app.searchFields.element.tap()
        app.searchFields.element.typeText(inputValue)
        let expectedValue = app.searchFields.element.value
        XCTAssertTrue(expectedValue as? String == inputValue, "Text field value is different than input text!")
    }
    
    func testMultipleTextFields() {
        let inputValue = "vini peixoto"
        app.staticTexts["Text Fields"].tap()
        app.textFields.element(boundBy: 3).tap()
        app.textFields.element(boundBy: 3).typeText(inputValue)
        let expectedValue = app.textFields.element(boundBy: 3).value as? String
        XCTAssertTrue(expectedValue == inputValue, "Text field value is different than input text!")
    }
    
    func testDatePicker() {
        app.staticTexts["Date Picker"].tap()
        app.datePickers.element.tap()
        app.buttons["dismiss popup"].tap()
    }
    
    func testPickerView() {
        app.staticTexts["Picker View"].tap()
        
        app.pickerWheels["Red color component value"].adjust(toPickerWheelValue: "120")
        let redWheelValue = app.pickerWheels["Red color component value"].value as? String
        XCTAssertTrue(redWheelValue == "120")
        
        app.pickerWheels["Green color component value"].adjust(toPickerWheelValue: "255")
        let greenWheelValue = app.pickerWheels["Green color component value"].value as? String
        XCTAssertTrue(greenWheelValue == "255")
        
        app.pickerWheels["Blue color component value"].adjust(toPickerWheelValue: "130")
        let blueWheelValue = app.pickerWheels["Blue color component value"].value as? String
        XCTAssertTrue(blueWheelValue == "130")
    }
    
    func testPickerViewByIndex() {
        app.staticTexts["Picker View"].tap()
        app.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: "120")
        app.pickerWheels.element(boundBy: 1).adjust(toPickerWheelValue: "255")
        app.pickerWheels.element(boundBy: 2).adjust(toPickerWheelValue: "130")
        
        XCTAssertTrue(app.pickerWheels.element(boundBy: 0).value as? String == "120")
        XCTAssertTrue(app.pickerWheels.element(boundBy: 1).value as? String == "255")
        XCTAssertTrue(app.pickerWheels.element(boundBy: 2).value as? String == "130")
    }
    
    func testSlider() {
        app.staticTexts["Sliders"].tap()
        app.sliders["42%"].adjust(toNormalizedSliderPosition: 0.9)
        var expectedSliderPosition = String(format: "%.2f", app.sliders["91%"].normalizedSliderPosition)
        XCTAssertTrue(expectedSliderPosition == "0.91")
        
        app.sliders["91%"].adjust(toNormalizedSliderPosition: 0.3)
        expectedSliderPosition = String(format: "%.2f", app.sliders["28%"].normalizedSliderPosition)
        XCTAssertTrue(expectedSliderPosition == "0.28")
    }
    
    func testSwitches() {
        app.staticTexts["Switches"].tap()
        app.switches["1"].firstMatch.tap()
        XCTAssertTrue(app.switches["0"].firstMatch.waitForExistence(timeout: 1))
    }
    
    func testTextFieldsPopulate() {
        app.staticTexts["Text Fields"].tap()
        
        app.textFields.element(boundBy: 0).tap()
        app.typeText("first words typed")
        XCTAssertTrue(app.textFields.element(boundBy: 0).value as? String == "first words typed")
        
        app.textFields.element(boundBy: 1).tap()
        app.typeText("more words typed")
        XCTAssertTrue(app.textFields.element(boundBy: 1).value as? String == "more words typed")
        
        app.textFields.element(boundBy: 2).tap()
        app.typeText("even more words typed")
        XCTAssertTrue(app.textFields.element(boundBy: 2).value as? String == "even more words typed")
    }
    
    func testSecureTextFieldsPopulateIsSecured() throws {
        app.staticTexts["Text Fields"].tap()
        app.secureTextFields["Placeholder text"].tap()
        app.typeText("secured words")
        let password = app.secureTextFields["Placeholder text"].value as! String
        XCTAssertFalse(password.isEmpty)
    }
    
    func testTextFieldsDelete() {
        app.staticTexts["Text Fields"].tap()
        app.textFields.element(boundBy: 0).tap()
        let valueTyped = "words to be deleted"
        app.typeText(valueTyped)
        
        for _ in 0..<(valueTyped.count) {
            app.keys["delete"].tap()
        }
        
        let expectedTextValue = "Placeholder text" //"Placeholder text" still remains as value
        let actualTextValue = app.textFields.element(boundBy: 0).value as? String
        XCTAssertTrue(actualTextValue == expectedTextValue)
    }
    
    
    
}
