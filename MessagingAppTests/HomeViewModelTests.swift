//
//  HomeViewModelTests.swift
//  MessagingAppTests
//
//  Created by Lorenzo Masucci on 27/10/2023.
//

import XCTest
@testable import MessagingApp

final class HomeViewModelTests: XCTestCase {
    
    var viewModel: HomeViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = HomeViewModel()
    }
    
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    // Test if loadJson function properly decodes JSON and sorts conversations by date
    func testLoadJson() {
        // Assuming you have a test Conversations.json file in your test bundle
        viewModel.loadJson()
        
        // Add assertions to check if the list is sorted correctly
        XCTAssertEqual(viewModel.list.count, 5) // Set expectedCount to the number of conversations in your test JSON
    }
}

