//
//  MessagingAppUITests.swift
//  MessagingAppUITests
//
//  Created by Lorenzo Masucci on 27/10/2023.
//

import XCTest

final class MessagingAppUITests: XCTestCase {
    
    func test_whenUserSelectAConversation_MessagesAreShowing() {
        // GIVEN
        let app = XCUIApplication()
        let firstCell = app.staticTexts["ui.cell.conversationID.5f58bcd7200c90cfaac93778"]
        
        // WHEN
        app.launch()

        // THEN
        XCTAssertTrue(firstCell.exists)

        // WHEN
        firstCell.tap()
        
        // THEN
        let commentsName = app.staticTexts["ui.cell.message.5f58bcd7d5f9b5ff7c3f4216"]
        XCTAssertTrue(commentsName.exists)
        XCTAssertEqual(commentsName.label, "voluptate nulla commodo reprehenderit")
    }
}
