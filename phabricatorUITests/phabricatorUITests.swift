//
//  phabricatorUITests.swift
//  phabricatorUITests
//
//  Created by Raphael K. on 22.11.16.
//  Copyright © 2016 Raphael K. All rights reserved.
//

import XCTest

class phabricatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        
        let app = XCUIApplication()
        //setupSnapshot(app)
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHome() {
        XCUIApplication().tabBars.buttons["Home"].tap()
        //snapshot("01Home")
    }
    
    func testManiphest() {
        XCUIApplication().tabBars.buttons["Maniphest"].tap()
        //snapshot("02Maniphest")
    }
    
    func testConpherence() {
        XCUIApplication().tabBars.buttons["Conpherence"].tap()
        //snapshot("03Conpherence")
    }
    
    func testPhriction() {
        XCUIApplication().tabBars.buttons["Phriction"].tap()
        //snapshot("04Phriction")
    }
    
    func testPhame() {
        XCUIApplication().tabBars.buttons["Phame"].tap()
        //snapshot("05Phame")
    }
    
}
