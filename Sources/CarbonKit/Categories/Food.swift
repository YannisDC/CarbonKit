//
//  File.swift
//  
//
//  Created by Yannis De Cleene on 07/02/2022.
//

import Foundation

/*
 Unit: kgCO2eq / kg of consumed food
 http://www.greeneatz.com/foods-carbon-footprint.html
 https://www.bilans-ges.ademe.fr/
 */

extension CarbonKit {
    struct Food {
        enum Meat: CO2Measurable {
            case lamb(weight: Measurement<UnitMass>)
            case beef(weight: Measurement<UnitMass>)
            case redMeat(weight: Measurement<UnitMass>)
            case pork(weight: Measurement<UnitMass>)
            case turkey(weight: Measurement<UnitMass>)
            case chicken(weight: Measurement<UnitMass>)
            case whiteMeat(weight: Measurement<UnitMass>)
            
            var CO2: Measurement<UnitMass> {
                switch self {
                case .lamb(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.lamb
                case .beef(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.beef
                case .redMeat(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.redMeat
                case .pork(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.pork
                case .turkey(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.turkey
                case .chicken(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.chicken
                case .whiteMeat(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.whiteMeat
                }
            }
            
            private struct C02Intensity {
                static let lamb = Measurement(value: 39.2, unit: UnitMass.kgCO2eq)
                static let beef = Measurement(value: 27.0, unit: UnitMass.kgCO2eq)
                static let redMeat = Measurement(value: (lamb.value + beef.value) / 2, unit: UnitMass.kgCO2eq)
                static let pork = Measurement(value: 12.1, unit: UnitMass.kgCO2eq)
                static let turkey = Measurement(value: 10.9, unit: UnitMass.kgCO2eq)
                static let chicken = Measurement(value: 6.9, unit: UnitMass.kgCO2eq)
                static let whiteMeat = Measurement(value: (pork.value + turkey.value + chicken.value) / 3, unit: UnitMass.kgCO2eq)
            }
        }
        
        enum Fish: CO2Measurable {
            case tuna(weight: Measurement<UnitMass>)
            case other(weight: Measurement<UnitMass>)
            
            var CO2: Measurement<UnitMass> {
                switch self {
                case .tuna(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.tuna
                case .other(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.fish
                }
            }
            
            private struct C02Intensity {
                static let tuna = Measurement(value: 6.1, unit: UnitMass.kgCO2eq)
                static let fish = Measurement(value: tuna.value, unit: UnitMass.kgCO2eq)
            }
        }
        
        enum Dairy: CO2Measurable {
            case cheese(weight: Measurement<UnitMass>)
            case milk(weight: Measurement<UnitMass>)
            
            var CO2: Measurement<UnitMass> {
                switch self {
                case .cheese(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.cheese
                case .milk(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.milk
                }
            }
            
            private struct C02Intensity {
                static let milk = Measurement(value: 1.9, unit: UnitMass.kgCO2eq)
                static let cheese = Measurement(value: 13.5, unit: UnitMass.kgCO2eq)
            }
        }

        enum Other: CO2Measurable {
            case eggs(weight: Measurement<UnitMass>)
            case potatoes(weight: Measurement<UnitMass>)
            case rice(weight: Measurement<UnitMass>)
            case lentils(weight: Measurement<UnitMass>)
            case tofu(weight: Measurement<UnitMass>)
            case vegetables(weight: Measurement<UnitMass>)
            case nuts(weight: Measurement<UnitMass>)
            case beans(weight: Measurement<UnitMass>)
            case fruit(weight: Measurement<UnitMass>)
            case coffee(weight: Measurement<UnitMass>)
            case chocolate(weight: Measurement<UnitMass>)

            var CO2: Measurement<UnitMass> {
                switch self {
                case .eggs(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.eggs
                case .potatoes(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.potatoes
                case .rice(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.rice
                case .lentils(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.lentils
                case .tofu(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.tofu
                case .vegetables(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.vegetables
                case .nuts(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.nuts
                case .beans(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.beans
                case .fruit(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.fruit
                case .coffee(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.coffee
                case .chocolate(let weight):
                    return weight.converted(to: UnitMass.kilograms).value * C02Intensity.chocolate
                }
            }

            private struct C02Intensity {
                static let eggs = Measurement(value: 4.8, unit: UnitMass.kgCO2eq)
                static let potatoes = Measurement(value: 2.9, unit: UnitMass.kgCO2eq)
                static let rice = Measurement(value: 2.7, unit: UnitMass.kgCO2eq)
                static let lentils = Measurement(value: 0.9, unit: UnitMass.kgCO2eq)

                static let tofu = Measurement(value: 2.0, unit: UnitMass.kgCO2eq)
                static let vegetables = Measurement(value: 2.0, unit: UnitMass.kgCO2eq)
                static let nuts = Measurement(value: 2.3, unit: UnitMass.kgCO2eq)
                static let beans = Measurement(value: 2.0, unit: UnitMass.kgCO2eq)
                static let fruit = Measurement(value: 1.1, unit: UnitMass.kgCO2eq)

                static let coffee = Measurement(value: 3.14, unit: UnitMass.kgCO2eq)
                static let chocolate = Measurement(value: 4.87, unit: UnitMass.kgCO2eq)
            }
        }
    }
}
