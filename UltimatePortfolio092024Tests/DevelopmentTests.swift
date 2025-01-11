//
//  DevelopmentTests.swift
//  UltimatePortfolio092024Tests
//
//  Created by Keyla Barreto on 01/10/25.
//

import CoreData
import XCTest
@testable import UltimatePortfolio092024

final class DevelopmentTests: BaseTestCase {
    func testSampleDataCreationWorks() {
        dataController.createSampleData()

        XCTAssertEqual(dataController.count(for: Tag.fetchRequest()),
                       5, "There should be 5 sample tags.")

        XCTAssertEqual(dataController.count(for: Issue.fetchRequest()),
                       50, "There should be 50 sample issues.")
    }

    func testDeleteAllClearsEverything() {
        dataController.createSampleData()
        dataController.deleteAll()

        XCTAssertEqual(dataController.count(for: Tag.fetchRequest()),
                       0, "There should be 0 tags.")

        XCTAssertEqual(dataController.count(for: Issue.fetchRequest()),
                       0, "There should be 0 issues.")
    }

    func testExampleTagHasNoIssues() {
        let tag = Tag.example

        XCTAssertEqual(tag.issues?.count,
                       0, "A tag shouldn't have issues when created")
    }

    func testNewIssueHighPriority() {
        let issue = Issue.example

        XCTAssertEqual(issue.priority, 2, "Issue priority should be High")
    }
}
