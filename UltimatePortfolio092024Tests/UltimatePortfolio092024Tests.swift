//
//  UltimatePortfolio092024Tests.swift
//  UltimatePortfolio092024Tests
//
//  Created by Keyla Barreto on 01/06/25.
//

import CoreData
// import Testing
import XCTest
@testable import UltimatePortfolio092024

class BaseTestCase: XCTestCase {
    var dataController: DataController!
    var managedObjectContext: NSManagedObjectContext!

    override func setUpWithError() throws {
        dataController = DataController(inMemory: true)
        managedObjectContext = dataController.container.viewContext
    }
}
