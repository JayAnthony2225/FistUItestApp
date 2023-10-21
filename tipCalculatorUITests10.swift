//
//  tipCalculatorUITests.swift
//  tipCalculatorUITests
//
//  Created by Marco Cruz Velázquez on 10/20/23.
//

import XCTest

final class tipCalculatorUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
//        let app = XCUIApplication()
        let userName = app.textFields["  Total de la cuenta? "]  //  app.textFields["  Total de la cuenta? "]
        XCTAssertTrue(userName.exists)      // verifica que username exista
        userName.tap()
        userName.typeText("200")
        
        let dePersonasTextField = app.textFields[" # de personas? "]
        XCTAssertTrue(dePersonasTextField.exists)
        dePersonasTextField.tap()
        dePersonasTextField.typeText("2")
        
        let dePropinaTextField = app.textFields[" % de propina?"]
        XCTAssertTrue(dePropinaTextField.exists)
        dePropinaTextField.tap()
        dePropinaTextField.typeText("15")
        
        
        
        let result = app.staticTexts[" "]
        XCTAssert(result.exists)
        
        let button = app.buttons["Calcular"]
        XCTAssert(button.exists, "Este Boton No existe o ha sido modificado")
        button.tap()
        
//        app/*@START_MENU_TOKEN@*/.staticTexts["Calcular"]/*[[".buttons[\"Calcular\"].staticTexts[\"Calcular\"]",".staticTexts[\"Calcular\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
             
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
