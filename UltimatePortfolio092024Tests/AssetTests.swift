//
//  AssetTests.swift
//  UltimatePortfolio092024Tests
//
//  Created by Keyla Barreto on 01/06/25.
//

import XCTest
@testable import UltimatePortfolio092024

final class AssetTests: XCTestCase {
    func testColorsExists() {
        let allColors = ["Dark Blue", "Dark Gray", "Gold", "Gray", "Green",
                         "Light Blue", "Midnight", "Orange", "Pink", "Purple", "Red", "Teal"]

        for color in allColors {
            XCTAssertNotNil(UIColor(named: color), "Failed to load color '\(color) from asset catalog")
        }
    }

    func testAwardsLoadCorrectly() {
        XCTAssertTrue(Award.allAwards.isEmpty == false, "Failed to load awards from JSON")
    }
}
