//
//  File.swift
//  
//
//  Created by Yannis De Cleene on 07/02/2022.
//

import Foundation

/*
 Unit: kgCO2eq per product
 
 Tech
 Reasons to choose Apple :
 - world leader
 - sharing figures
 Links :
 https://www.apple.com/lae/environment/pdf/products/iphone/iPhone_11_Pro_PER_sept2019.pdf
 https://www.apple.com/lae/environment/pdf/products/ipad/iPad_PER_sept2019.pdf
 https://www.apple.com/lae/environment/pdf/products/desktops/21.5-inch_iMac_with_Retina4KDisplay_PER_Mar2019.pdf
 https://www.apple.com/lae/environment/pdf/products/notebooks/13-inch_MacBookPro_PER_June2019.pdf
 https://www.bilans-ges.ademe.fr/fr/basecarbone/donnees-consulter/liste-element?recherche=T%C3%A9l%C3%A9vision
 
 Transport
 Reasons to choose LowCVP :
 - LowCVP is a a public-private partnership (with UK gov and business) working a sustainable shift to lower carbon vehicles and fuel
 - We can read more here: https://www.lowcvp.org.uk/about.htm
 https://www.lowcvp.org.uk/assets/workingdocuments/MC-P-11-15a%20Lifecycle%20emissions%20report.pdf
 
 Fashion
 https://www.ademe.fr/sites/default/files/assets/documents/poids_carbone-biens-equipement-201809-rapport.pdf
 */
extension CarbonKit {
    struct Product {
        enum Tech: CO2Measurable {
            case smartphone(numberOfDevices: Int)
            case tablet(numberOfDevices: Int)
            case computer(numberOfDevices: Int)
            case laptop(numberOfDevices: Int)
            case tv(numberOfDevices: Int)
            
            var CO2: Measurement<UnitMass> {
                switch self {
                case .smartphone(let numberOfDevices):
                    return Double(numberOfDevices) * C02Intensity.smartphone
                case .tablet(let numberOfDevices):
                    return Double(numberOfDevices) * C02Intensity.tablet
                case .computer(let numberOfDevices):
                    return Double(numberOfDevices) * C02Intensity.computer
                case .laptop(let numberOfDevices):
                    return Double(numberOfDevices) * C02Intensity.laptop
                case .tv(let numberOfDevices):
                    return Double(numberOfDevices) * C02Intensity.tv
                }
            }
            
            private struct C02Intensity {
                static let smartphone = Measurement(value: 80, unit: UnitMass.kgCO2eq)
                static let tablet = Measurement(value: 87, unit: UnitMass.kgCO2eq)
                static let computer = Measurement(value: 588, unit: UnitMass.kgCO2eq)
                static let laptop = Measurement(value: 210, unit: UnitMass.kgCO2eq)
                static let tv = Measurement(value: 500, unit: UnitMass.kgCO2eq)
                
            }
        }
        
        enum Transport: CO2Measurable {
            case fossilFuelCar(numberOfVehicles: Int)
            case hybridCar(numberOfVehicles: Int)
            case eletricCar(numberOfVehicles: Int)
            
            var CO2: Measurement<UnitMass> {
                switch self {
                case .fossilFuelCar(let numberOfVehicles):
                    return Double(numberOfVehicles) * C02Intensity.fossilFuelCar
                case .hybridCar(let numberOfVehicles):
                    return Double(numberOfVehicles) * C02Intensity.hybridCar
                case .eletricCar(let numberOfVehicles):
                    return Double(numberOfVehicles) * C02Intensity.eletricCar
                }
            }
            
            private struct C02Intensity {
                static let fossilFuelCar = Measurement(value: 5600, unit: UnitMass.kgCO2eq)
                static let hybridCar = Measurement(value: 6500, unit: UnitMass.kgCO2eq)
                static let eletricCar = Measurement(value: 8800, unit: UnitMass.kgCO2eq)
            }
        }
        
        enum Fashion: CO2Measurable {
            case shirt(numberOfItems: Int)
            case tshirt(numberOfItems: Int)
            case jeans(numberOfItems: Int)
            case sweater(numberOfItems: Int)
            case coat(numberOfItems: Int)
            case dress(numberOfItems: Int)
            case shoes(numberOfItems: Int)
            
            var CO2: Measurement<UnitMass> {
                switch self {
                case .shirt(let numberOfItems):
                    return Double(numberOfItems) * C02Intensity.shirt
                case .tshirt(let numberOfItems):
                    return Double(numberOfItems) * C02Intensity.tshirt
                case .jeans(let numberOfItems):
                    return Double(numberOfItems) * C02Intensity.jeans
                case .sweater(let numberOfItems):
                    return Double(numberOfItems) * C02Intensity.sweater
                case .coat(let numberOfItems):
                    return Double(numberOfItems) * C02Intensity.coat
                case .dress(let numberOfItems):
                    return Double(numberOfItems) * C02Intensity.dress
                case .shoes(let numberOfItems):
                    return Double(numberOfItems) * C02Intensity.shoes
                }
            }
            
            private struct C02Intensity {
                static let shirt = Measurement(value: (13.0 + 12.0) / 2.0, unit: UnitMass.kgCO2eq)
                static let tshirt = Measurement(value: (7.0 + 10.0 + 6.0) / 3.0, unit: UnitMass.kgCO2eq)
                static let jeans = Measurement(value: 25.0, unit: UnitMass.kgCO2eq)
                static let sweater = Measurement(value: (28.0 + 26.0 + 31.0 + 56.0 + 12.0) / 5.0, unit: UnitMass.kgCO2eq)
                static let coat = Measurement(value: (89.0 + 39.0 + 25.0) / 3.0, unit: UnitMass.kgCO2eq)
                static let dress = Measurement(value: (56.0 + 56.0 + 51.0) / 3.0, unit: UnitMass.kgCO2eq)
                static let shoes = Measurement(value: (15.0 + 19.0 + 20.0) / 3.0, unit: UnitMass.kgCO2eq)
            }
        }
    }
}
