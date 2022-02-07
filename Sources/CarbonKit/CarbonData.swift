//
//  File.swift
//  
//
//  Created by Yannis De Cleene on 07/02/2022.
//

import Foundation

public struct CarbonData {
    static let FactorDataCenter = Measurement(value: 0.007, unit: UnitInformationEnergyCost.kWhPerGB)
    static let FactorNetwork = Measurement(value: 0.058, unit: UnitInformationEnergyCost.kWhPerGB)
    static let FactorDevice = Measurement(value: 0.055, unit: UnitPower.kilowatts)
    
    // TODO: Music

    /*
     Unit: bits/s, use getInternetUsageCarbonImpact to get kgCO₂eq

     Star Wars The Rise Of Skywalker - 2h22
     HD / 720p : 1.21 GB
     Full HD / 1080p : 7.02 GB
     Ultra HD / 2160p : 35.73 Gb

     MP3 song at 192 kbps / 3.8 MB
     */

    struct Music {
        static let HDVideo = Measurement(value: 0.000803, unit: UnitMass.kgCO2eq)
    }
    //const HDVideo = (1.21 * Math.pow(10, 9) * 8) / ((2 * 60 + 22) * 60);
    //const fullHDVideo = (7.02 * Math.pow(10, 9) * 8) / ((2 * 60 + 22) * 60);
    //const ultraHDVideo = (35.73 * Math.pow(10, 9) * 8) / ((2 * 60 + 22) * 60);
    //
    //
    //const audioMP3 = (3.8 * Math.pow(10, 6) * 8) / 154;
}

public enum GHGAverages {

    /* source in kgCO₂eq/kWh : https://github.com/carbonalyser/Carbonalyser */
    static let europe = Measurement(value: 0.276, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let usa = Measurement(value: 0.493, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let china = Measurement(value: 0.681, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    public static let world = Measurement(value: 0.519, unit: UnitGHGConcentration.kgCO2eqPerkWh)

    /*
     Europe in kgCO₂eq/kWh
     Source : https://www.electricitymap.org - 28th of April 2020
    */
    static let france = Measurement(value: 0.031, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let uk = Measurement(value: 0.231, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let ireland = Measurement(value: 0.477, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let spain = Measurement(value: 0.138, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let portugal = Measurement(value: 0.105, unit: UnitGHGConcentration.kgCO2eqPerkWh)

    static let netherlands = Measurement(value: 0.434, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let belgium = Measurement(value: 0.172, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let danmark = Measurement(value: 0.226, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let germany = Measurement(value: 0.33, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let poland = Measurement(value: 0.66, unit: UnitGHGConcentration.kgCO2eqPerkWh)

    static let italy = Measurement(value: 0.386, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let turkey = Measurement(value: 0.322, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let finland = Measurement(value: 0.162, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let norway = Measurement(value: 0.036, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let czechia = Measurement(value: 0.446, unit: UnitGHGConcentration.kgCO2eqPerkWh)

    static let austria = Measurement(value: 0.153, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let serbia = Measurement(value: 0.517, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let slovenia = Measurement(value: 0.078, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let hungary = Measurement(value: 0.177, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let slovakia = Measurement(value: 0.234, unit: UnitGHGConcentration.kgCO2eqPerkWh)

    static let ukraine = Measurement(value: 0.213, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let romania = Measurement(value: 0.184, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let moldava = Measurement(value: 0.667, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let estonia = Measurement(value: 0.193, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let latvia = Measurement(value: 0.243, unit: UnitGHGConcentration.kgCO2eqPerkWh)

    static let lithuania = Measurement(value: 0.183, unit: UnitGHGConcentration.kgCO2eqPerkWh)

    static let peru = Measurement(value: 0.026, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let bolivia = Measurement(value: 0.512, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let argentina = Measurement(value: 0.299, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let uruguay = Measurement(value: 0.03, unit: UnitGHGConcentration.kgCO2eqPerkWh)
    static let brazil = Measurement(value: 0.086, unit: UnitGHGConcentration.kgCO2eqPerkWh)

    static let australia = Measurement(value: 0.571, unit: UnitGHGConcentration.kgCO2eqPerkWh)
}

