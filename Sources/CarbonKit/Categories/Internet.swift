//
//  File.swift
//  
//
//  Created by Yannis De Cleene on 07/02/2022.
//

import Foundation

extension CarbonKit {
    struct Internet {
        static func StreamingImpact(duration: Measurement<UnitDuration>,
                                    informationAmount: Measurement<UnitInformationStorage>,
                                    carbonElectricityIntensity: Measurement<UnitGHGConcentration>) -> Measurement<UnitMass> {

            let GHGDataCenterEnergy = informationAmount.converted(to: UnitInformationStorage.baseUnit()) * CarbonData.FactorDataCenter.converted(to: UnitInformationEnergyCost.baseUnit())
            let GHGDataCenter: Measurement<UnitMass> = GHGDataCenterEnergy * GHGAverages.world.converted(to: UnitGHGConcentration.baseUnit())

            let GHGNetworkEnergy = informationAmount.converted(to: UnitInformationStorage.baseUnit()) * CarbonData.FactorNetwork.converted(to: UnitInformationEnergyCost.baseUnit())
            let GHGNetwork: Measurement<UnitMass> = GHGNetworkEnergy * GHGAverages.world.converted(to: UnitGHGConcentration.baseUnit())

            let GHGDeviceEnergy: Measurement<UnitEnergy> = CarbonData.FactorDevice.converted(to: UnitPower.baseUnit()) * duration.converted(to: UnitDuration.baseUnit())
            let GHGDevice: Measurement<UnitMass> = GHGDeviceEnergy * carbonElectricityIntensity.converted(to: UnitGHGConcentration.baseUnit())

            return GHGDataCenter + GHGNetwork + GHGDevice
        }
    }
}
