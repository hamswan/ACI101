//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Hamsa Buvaraghan on 11/9/18.
//  Copyright © 2018 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests: XCTestCase {
    
var entryUnderTest: Entry!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        entryUnderTest = Entry("Title", "Content")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        entryUnderTest = nil
        super.tearDown()
    }

    func testSerialization() {
        let serializedData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializedData!)
        
        XCTAssertEqual(entry?.title, "Title", "Title does not match")
        XCTAssertEqual(entry?.content, "Content", "Content does not match")
    }
    

}
