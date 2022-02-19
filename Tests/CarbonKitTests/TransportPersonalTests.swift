//
//  TransportPersonalTests.swift
//  
//
//  Created by Yannis De Cleene on 18/02/2022.
//

import XCTest
@testable import CarbonKit

class TransportPersonalTests: XCTestCase {

    func testFossilFueledCar() throws {
        XCTAssertEqual(CarbonKit.Transport.Personal.fossilFueled(travelDistance: Measurement(value: 100.0, unit: UnitLength.kilometers)).CO2.value,
                       Measurement(value: 25.7, unit: UnitMass.kgCO2eq).value,
                       accuracy: 0.01)
    }

    func testEVCar() throws {
        XCTAssertEqual(CarbonKit.Transport.Personal.electricVehicle(travelDistance: Measurement(value: 100.0, unit: UnitLength.kilometers)).CO2.value,
                       Measurement(value: 8.1, unit: UnitMass.kgCO2eq).value,
                       accuracy: 0.01)
    }

    func testCar() throws {
        XCTAssertEqual(CarbonKit.Transport.Personal.car(travelDistance: Measurement(value: 100.0, unit: UnitLength.kilometers)).CO2.value,
                       Measurement(value: 25.7, unit: UnitMass.kgCO2eq).value,
                       accuracy: 0.01)
    }

    func testHybridCar() throws {
        XCTAssertEqual(CarbonKit.Transport.Personal.hybridCar(travelDistance: Measurement(value: 100.0, unit: UnitLength.kilometers)).CO2.value,
                       Measurement(value: 18.0, unit: UnitMass.kgCO2eq).value,
                       accuracy: 0.01)
    }

    func testCarSharing() throws {
        XCTAssertEqual(CarbonKit.Transport.Personal.carSharing(travelDistance: Measurement(value: 100.0, unit: UnitLength.kilometers)).CO2.value,
                       Measurement(value: 14.7, unit: UnitMass.kgCO2eq).value,
                       accuracy: 0.01)
    }

    func testMotorbike() throws {
        XCTAssertEqual(CarbonKit.Transport.Personal.motorbike(travelDistance: Measurement(value: 100.0, unit: UnitLength.kilometers)).CO2.value,
                       Measurement(value: 10.8, unit: UnitMass.kgCO2eq).value,
                       accuracy: 0.01)
    }

}
