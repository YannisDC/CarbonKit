//
//  ProductFashionTests.swift
//  
//
//  Created by Yannis De Cleene on 18/02/2022.
//

import XCTest
@testable import CarbonKit

class ProductFashionTests: XCTestCase {

    func testShirt() throws {
        XCTAssertEqual(CarbonKit.Product.Fashion.shirt(numberOfItems: 1).CO2,
                       Measurement(value: 12.5, unit: UnitMass.kgCO2eq))
    }

    func testTShirt() throws {
        XCTAssertEqual(CarbonKit.Product.Fashion.tshirt(numberOfItems: 3).CO2,
                       Measurement(value: 23.0, unit: UnitMass.kgCO2eq))
    }

    func testJeans() throws {
        XCTAssertEqual(CarbonKit.Product.Fashion.jeans(numberOfItems: 2).CO2,
                       Measurement(value: 50.0, unit: UnitMass.kgCO2eq))
    }

    func testSweater() throws {
        XCTAssertEqual(CarbonKit.Product.Fashion.sweater(numberOfItems: 1).CO2,
                       Measurement(value: 30.6, unit: UnitMass.kgCO2eq))
    }

    func testCoat() throws {
        XCTAssertEqual(CarbonKit.Product.Fashion.coat(numberOfItems: 1).CO2,
                       Measurement(value: 51.0, unit: UnitMass.kgCO2eq))
    }

    func testDress() throws {
        XCTAssertEqual(CarbonKit.Product.Fashion.dress(numberOfItems: 3).CO2,
                       Measurement(value: 163.0, unit: UnitMass.kgCO2eq))
    }

    func testShoes() throws {
        XCTAssertEqual(CarbonKit.Product.Fashion.shoes(numberOfItems: 1).CO2,
                       Measurement(value: 18.0, unit: UnitMass.kgCO2eq))
    }
}
