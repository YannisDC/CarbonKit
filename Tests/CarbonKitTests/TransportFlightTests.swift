//
//  TransportFlightTests.swift
//  
//
//  Created by Yannis De Cleene on 18/02/2022.
//

import XCTest
@testable import CarbonKit

class TransportFlightTests: XCTestCase {

    func testShortHaulFlight() throws {
        XCTAssertEqual(CarbonKit.Transport.Flight.shortHaulFlight(travelDistance: Measurement(value: 100.0, unit: UnitLength.kilometers)).CO2,
                       Measurement(value: 34.0, unit: UnitMass.kgCO2eq))
    }

    func testMediumHaulFlight() throws {
        XCTAssertEqual(CarbonKit.Transport.Flight.mediumHaulFlight(travelDistance: Measurement(value: 500.0, unit: UnitLength.kilometers)).CO2,
                       Measurement(value: 143.0, unit: UnitMass.kgCO2eq))
    }

    func testLongHaulFlight() throws {
        XCTAssertEqual(CarbonKit.Transport.Flight.longHaulFlight(travelDistance: Measurement(value: 1000.0, unit: UnitLength.kilometers)).CO2,
                       Measurement(value: 239.0, unit: UnitMass.kgCO2eq))
    }

    func testPlane() throws {
        XCTAssertEqual(CarbonKit.Transport.Flight.plane(travelDistance: Measurement(value: 3000.0, unit: UnitLength.kilometers)).CO2.value,
                       Measurement(value: 865.0, unit: UnitMass.kgCO2eq).value,
                       accuracy: 0.001)
    }

}
