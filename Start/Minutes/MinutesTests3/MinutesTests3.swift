//
//  MinutesTests3.swift
//  MinutesTests3
//
//  Created by Judy Mcneil on 5/7/18.
//  Copyright © 2018 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes
class MinutesTests3: XCTestCase {
    
    var entryUnderTest: Entry!
    
    override func setUp() {
        super.setUp()
        entryUnderTest = Entry("Title", "Content")
    }
    
    override func tearDown() {
        entryUnderTest = nil
        super.tearDown()
    }
    
func testSerialization()
{
    let serializedData = FileEntryStore.serialize(entryUnderTest)
    let entry = FileEntryStore.deserialize(serializedData!)
    
    XCTAssertEqual(entry?.title, "Title", "Title does not match")
    XCTAssertEqual(entry?.content, "Content", "Content does not match")
}
    
    
    
}
