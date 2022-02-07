//
//  File 2.swift
//  
//
//  Created by Yannis De Cleene on 07/02/2022.
//

import Foundation

public extension UnitMass {
    static let kgCO2eq = UnitMass(symbol: "kgCO₂eq", converter: UnitConverterLinear(coefficient: 1.0))
}

public extension UnitMass: UnitProduct {
    static func defaultUnitMapping() -> (UnitGHGConcentration, UnitEnergy, UnitMass) {
        return (.kgCO2eqPerkWh, .kilowattHours, .kgCO2eq)
    }
}
