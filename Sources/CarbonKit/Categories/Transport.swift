//
//  File.swift
//  
//
//  Created by Yannis De Cleene on 07/02/2022.
//

import Foundation

/*
 Unit: kgCO2eq/m
 https://static.ducky.eco/calculator_documentation.pdf
 */

extension CarbonKit {
    public struct Transport {
        public enum Personal: CO2Measurable {
            case fossilFueled(travelDistance: Measurement<UnitLength>)
            case electricVehicle(travelDistance: Measurement<UnitLength>)
            case car(travelDistance: Measurement<UnitLength>)
            case hybridCar(travelDistance: Measurement<UnitLength>)
            case carSharing(travelDistance: Measurement<UnitLength>)
            case motorbike(travelDistance: Measurement<UnitLength>)
            
            public var CO2: Measurement<UnitMass> {
                switch self {
                case .fossilFueled(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.fossilFueledCar
                case .electricVehicle(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.electricVehicle
                case .car(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.car
                case .hybridCar(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.hybridCar
                case .carSharing(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.carSharing
                case .motorbike(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.motorbike
                }
            }
            
            private struct Intensity {
                static let fossilFueledCar = Measurement(value: 0.000257, unit: UnitMass.kgCO2eq)
                static let electricVehicle = Measurement(value: 0.000081, unit: UnitMass.kgCO2eq)
                static let car = fossilFueledCar
                static let hybridCar = Measurement(value: 0.00018, unit: UnitMass.kgCO2eq)
                static let carSharing = Measurement(value: 0.000147, unit: UnitMass.kgCO2eq)
                static let motorbike = Measurement(value: 0.000108, unit: UnitMass.kgCO2eq)
            }
        }
        
        enum Public: CO2Measurable {
            case bus(travelDistance: Measurement<UnitLength>)
            case shortDistanceBus(travelDistance: Measurement<UnitLength>)
            case longDistanceBus(travelDistance: Measurement<UnitLength>)
            case train(travelDistance: Measurement<UnitLength>)
            case boat(travelDistance: Measurement<UnitLength>)
            
            var CO2: Measurement<UnitMass> {
                switch self {
                case .bus(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.bus
                case .shortDistanceBus(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.shortDistanceBus
                case .longDistanceBus(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.longDistanceBus
                case .train(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.train
                case .boat(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.boat
                }
            }
            
            private struct Intensity {
                static let bus = Measurement(value: 0.000103, unit: UnitMass.kgCO2eq)
                static let shortDistanceBus = bus
                static let longDistanceBus = Measurement(value: 0.000052, unit: UnitMass.kgCO2eq)
                static let train = Measurement(value: 0.000042, unit: UnitMass.kgCO2eq)
                static let boat = Measurement(value: 0.000803, unit: UnitMass.kgCO2eq)
            }
        }
        
        enum Flight: CO2Measurable {
            case shortHaulFlight(travelDistance: Measurement<UnitLength>)
            case mediumHaulFlight(travelDistance: Measurement<UnitLength>)
            case longHaulFlight(travelDistance: Measurement<UnitLength>)
            case plane(travelDistance: Measurement<UnitLength>)
            
            var CO2: Measurement<UnitMass> {
                switch self {
                case .shortHaulFlight(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.shortHaulFlight
                case .mediumHaulFlight(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.mediumHaulFlight
                case .longHaulFlight(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.longHaulFlight
                case .plane(let travelDistance):
                    return travelDistance.converted(to: UnitLength.meters).value * Intensity.plane
                }
            }
            
            private struct Intensity {
                static let shortHaulFlight = Measurement(value: 0.00034, unit: UnitMass.kgCO2eq)
                static let mediumHaulFlight = Measurement(value: 0.000286, unit: UnitMass.kgCO2eq)
                static let longHaulFlight = Measurement(value: 0.000239, unit: UnitMass.kgCO2eq)
                static let plane = Measurement(value: (shortHaulFlight.value + mediumHaulFlight.value + longHaulFlight.value) / 3, unit: UnitMass.kgCO2eq)
            }
        }
    }
}
