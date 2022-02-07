import XCTest
@testable import CarbonKit

final class CarbonKitTests: XCTestCase {
    func testInternetUsage() throws {
        let internetUsage = CarbonKit.Internet.StreamingImpact(duration: Measurement(value: 100, unit: UnitDuration.minutes),
                                                               informationAmount: Measurement(value: 0.7, unit: UnitInformationStorage.gigabytes),
                                                               carbonElectricityIntensity: GHGAverages.world)

        XCTAssertEqual(internetUsage.value, Measurement(value: 0.0711895, unit: UnitMass.kgCO2eq).value, accuracy: 0.000001)
    }

    func testTransport() throws {
        let transportUsage = CarbonKit.Transport.Personal.fossilFueled(travelDistance: Measurement(value: 2.0, unit: UnitLength.kilometers)).CO2
        XCTAssertEqual(transportUsage, Measurement(value: 0.514, unit: UnitMass.kgCO2eq))
    }

    func testFashion() throws {
        let shirtUsage = CarbonKit.Product.Fashion.shirt(numberOfItems: 1).CO2
        XCTAssertEqual(shirtUsage, Measurement(value: 12.5, unit: UnitMass.kgCO2eq))
    }
}
