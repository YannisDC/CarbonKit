//
//  File.swift
//  
//
//  Created by Yannis De Cleene on 07/02/2022.
//

import Foundation

/// UnitEnergy = UnitPower * UnitDuration
/// ⇔ UnitPower = UnitEnergy / UnitDuration
extension UnitEnergy: UnitProduct {
    static func defaultUnitMapping() -> (UnitPower, UnitDuration, UnitEnergy) {
        return (.watts, .seconds, .joules)
    }
}

/// Since we can't overload the static func defaultUnitMapping() we have to do it this way.
public func * (lhs: Measurement<UnitInformationStorage>, rhs: Measurement<UnitInformationEnergyCost>) -> Measurement<UnitEnergy> {
    let left = lhs.converted(to: UnitInformationStorage.baseUnit()).value
    let right = rhs.converted(to: UnitInformationEnergyCost.baseUnit()).value
    return Measurement(value: left * right, unit: UnitEnergy.baseUnit())
}
