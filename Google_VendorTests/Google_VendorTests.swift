//
//  Google_VendorTests.swift
//  Google_VendorTests
//
//  Created by Sky on 9/23/19.
//  Copyright © 2019 Sky. All rights reserved.
//

import XCTest
@testable import Google_Vendor

class Google_VendorTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTrackArray() {
            let viewModel = ViewModel()
        XCTAssertTrue(viewModel.items.isEmpty)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
