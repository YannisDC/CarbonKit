//
//  ProductTransportTests.swift
//  
//
//  Created by Yannis De Cleene on 18/02/2022.
//

import XCTest
@testable import CarbonKit

class ProductTransportTests: XCTestCase {

    func testSmartphone() throws {
        XCTAssertEqual(CarbonKit.Product.Tech.smartphone(numberOfDevices: 2).CO2,
                       Measurement(value: 160.0, unit: UnitMass.kgCO2eq))
    }

}
