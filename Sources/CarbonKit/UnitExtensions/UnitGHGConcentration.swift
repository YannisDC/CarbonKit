//
//  File.swift
//  
//
//  Created by Yannis De Cleene on 07/02/2022.
//

import Foundation

public final class UnitGHGConcentration : Dimension { //<- Please do not miss `final`
    public static let kgCO2eqPerJ = UnitGHGConcentration(symbol: "kgCO₂eq/J", converter: UnitConverterLinear(coefficient: 1.0))
    public static let kgCO2eqPerkWh = UnitGHGConcentration(symbol: "kgCO₂eq/kWh", converter: UnitConverterLinear(coefficient: 1.0 / 3600000.0))

    public override class func baseUnit() -> UnitGHGConcentration {
        return kgCO2eqPerJ
    }
}
