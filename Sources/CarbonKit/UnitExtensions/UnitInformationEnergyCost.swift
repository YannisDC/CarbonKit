//
//  File.swift
//  
//
//  Created by Yannis De Cleene on 07/02/2022.
//

import Foundation

public final class UnitInformationEnergyCost : Dimension { //<- Please do not miss `final`
    static let JPerB = UnitInformationEnergyCost(symbol: "J/B", converter: UnitConverterLinear(coefficient: 1.0))
    static let kWhPerGB = UnitInformationEnergyCost(symbol: "kWh/GB", converter: UnitConverterLinear(coefficient: 3.6 / 1000.0))

    public override class func baseUnit() -> UnitInformationEnergyCost {
        return JPerB
    }
}
