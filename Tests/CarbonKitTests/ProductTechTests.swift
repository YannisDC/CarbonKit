//
//  ProductTechTests.swift
//  
//
//  Created by Yannis De Cleene on 18/02/2022.
//

import XCTest
@testable import CarbonKit

class ProductTechTests: XCTestCase {

    func testSmartphone() throws {
        XCTAssertEqual(CarbonKit.Product.Tech.smartphone(numberOfDevices: 2).CO2,
                       Measurement(value: 160.0, unit: UnitMass.kgCO2eq))
    }

    func testTablet() throws {
        XCTAssertEqual(CarbonKit.Product.Tech.tablet(numberOfDevices: 1).CO2,
                       Measurement(value: 87.0, unit: UnitMass.kgCO2eq))
    }

    func testComputer() throws {
        XCTAssertEqual(CarbonKit.Product.Tech.computer(numberOfDevices: 1).CO2,
                       Measurement(value: 588.0, unit: UnitMass.kgCO2eq))
    }

    func testLaptop() throws {
        XCTAssertEqual(CarbonKit.Product.Tech.laptop(numberOfDevices: 1).CO2,
                       Measurement(value: 210.0, unit: UnitMass.kgCO2eq))
    }

    func testTV() throws {
        XCTAssertEqual(CarbonKit.Product.Tech.tv(numberOfDevices: 1).CO2,
                       Measurement(value: 500.0, unit: UnitMass.kgCO2eq))
    }

}
