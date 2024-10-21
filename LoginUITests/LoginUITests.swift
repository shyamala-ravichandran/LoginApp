//
//  LoginUITests.swift
//  LoginUITests
//
//  Created by Shyamala Ravichandran on 21/10/2024.
//

import XCTest

final class LoginUITests: XCTestCase {

    override func setUpWithError() throws {

        continueAfterFailure = false

    }



    func testExample() throws {

        let app = XCUIApplication()
        app.launch()

        let usernameField = app.textFields["Username"]
        XCTAssertTrue(usernameField.exists)

        usernameField.tap()
        usernameField.typeText("Testuser")

        let passwordSecureTextField = app.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("test1234")

        let button = app.buttons["Login"]
        XCTAssertTrue(button.exists)

        app.buttons["Login"].tap()



        

    }


}
