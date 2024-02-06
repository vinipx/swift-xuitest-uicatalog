import XCTest

final class UIKitCatalogUIBasicElementsTests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()

    }

    override func tearDownWithError() throws {
        app.terminate()
    }

    func testSimpleNavigation() throws {
        print("app launched successfully!")
        app.staticTexts["Alert Views"].tap()
        app.staticTexts["Simple"].tap()
        app.buttons["OK"].tap()
        app.staticTexts["Okay / Cancel"].tap()
        app.buttons["Cancel"].tap()
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Buttons"].tap()
        tablesQuery.buttons["Person"].tap()
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
        XCTAssertTrue(expectedValue as! String == inputValue, "Text field value is different than input text!")
    }
    
    func testMultipleTextFields() {
        let inputValue = "vini peixoto"
        app.staticTexts["Text Fields"].tap()
        app.textFields.element(boundBy: 3).tap()
        app.textFields.element(boundBy: 3).typeText(inputValue)
        let expectedValue = app.textFields.element(boundBy: 3).value as! String
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
        let redWheelValue = app.pickerWheels["Red color component value"].value as! String
        XCTAssertTrue(redWheelValue == "120")
        
        app.pickerWheels["Green color component value"].adjust(toPickerWheelValue: "255")
        let greenWheelValue = app.pickerWheels["Green color component value"].value as! String
        XCTAssertTrue(greenWheelValue == "255")
        
        app.pickerWheels["Blue color component value"].adjust(toPickerWheelValue: "130")
        let blueWheelValue = app.pickerWheels["Blue color component value"].value as! String
        XCTAssertTrue(blueWheelValue == "130")
    }
    
}
