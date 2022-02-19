//
//  InternetTests.swift
//  
//
//  Created by Yannis De Cleene on 19/02/2022.
//

import XCTest
@testable import CarbonKit

class InternetTests: XCTestCase {

    func testInternetUsage() throws {
        let internetUsage = CarbonKit.Internet.StreamingImpact(duration: Measurement(value: 100.0, unit: UnitDuration.minutes),
                                                               informationAmount: Measurement(value: 0.7, unit: UnitInformationStorage.gigabytes),
                                                               carbonElectricityIntensity: GHGAverages.world)

        XCTAssertEqual(internetUsage.value, Measurement(value: 0.0711895, unit: UnitMass.kgCO2eq).value, accuracy: 0.000001)
    }

}
