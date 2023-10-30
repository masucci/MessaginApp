//
//  ConversationViewModelTests.swift
//  MessagingAppTests
//
//  Created by Lorenzo Masucci on 30/10/2023.
//

@testable import MessagingApp
import XCTest

class ConversationViewModelTests: XCTestCase {

    var viewModel: ConversationViewModel!

    override func setUp() {
        super.setUp()
        let messages = [
            Message(id: "1", text: "Hello", last_updated: Date()),
            Message(id: "2", text: "How are you?", last_updated: Date().addingTimeInterval(60)),
            Message(id: "3", text: "Goodbye", last_updated: Date().addingTimeInterval(120))
        ]
        viewModel = ConversationViewModel(messages: messages)
    }

    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }

    func testAddMessage() {
        let initialCount = viewModel.messages.count
        viewModel.addMessage(text: "New message")
        XCTAssertEqual(viewModel.messages.count, initialCount + 1)
    }

    func testFormatDate() {
        let dateString = "2023-10-30T14:30:00"
        let formattedDate = viewModel.formatDate(dateString: dateString)
        XCTAssertEqual(formattedDate, "30/10/23 14:30")
    }

    func testFormatDateInvalid() {
        let dateString = "Invalid date"
        let formattedDate = viewModel.formatDate(dateString: dateString)
        XCTAssertEqual(formattedDate, "Date not available")
    }
}
