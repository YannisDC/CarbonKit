//
//  TransportPublicTests.swift
//  
//
//  Created by Yannis De Cleene on 18/02/2022.
//

import XCTest
@testable import CarbonKit

class TransportPublicTests: XCTestCase {

    func testBus() throws {
        XCTAssertEqual(CarbonKit.Transport.Public.bus(travelDistance: Measurement(value: 100.0, unit: UnitLength.kilometers)).CO2.value,
                       Measurement(value: 10.3, unit: UnitMass.kgCO2eq).value,
                       accuracy: 0.01)
    }

    func testShortDistanceBus() throws {
        XCTAssertEqual(CarbonKit.Transport.Public.shortDistanceBus(travelDistance: Measurement(value: 100.0, unit: UnitLength.kilometers)).CO2.value,
                       Measurement(value: 10.3, unit: UnitMass.kgCO2eq).value,
                       accuracy: 0.01)
    }

    func testLongDistanceBus() throws {
        XCTAssertEqual(CarbonKit.Transport.Public.longDistanceBus(travelDistance: Measurement(value: 100.0, unit: UnitLength.kilometers)).CO2.value,
                       Measurement(value: 5.2, unit: UnitMass.kgCO2eq).value,
                       accuracy: 0.01)
    }

    func testTrain() throws {
        XCTAssertEqual(CarbonKit.Transport.Public.train(travelDistance: Measurement(value: 100.0, unit: UnitLength.kilometers)).CO2.value,
                       Measurement(value: 4.2, unit: UnitMass.kgCO2eq).value,
                       accuracy: 0.01)
    }

    func testBoat() throws {
        XCTAssertEqual(CarbonKit.Transport.Public.boat(travelDistance: Measurement(value: 100.0, unit: UnitLength.kilometers)).CO2.value,
                       Measurement(value: 80.3, unit: UnitMass.kgCO2eq).value,
                       accuracy: 0.01)
    }
}
