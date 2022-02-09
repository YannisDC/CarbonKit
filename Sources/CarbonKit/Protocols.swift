//
//  File.swift
//  
//
//  Created by Yannis De Cleene on 07/02/2022.
//

import Foundation

protocol CO2Measurable {
    var CO2: Measurement<UnitMass> { get }
}

protocol NH4Measurable {
    var NH4: Measurement<UnitMass> { get }
}

protocol O3Measurable {
    var O3: Measurement<UnitMass> { get }
}

protocol NO2Measurable {
    var NO2: Measurement<UnitMass> { get }
}

protocol WaterMeasurable {
    var water: Measurement<UnitVolume> { get }
}

protocol LandAreaMeasurable {
    var landArea: Measurement<UnitArea> { get }
}
