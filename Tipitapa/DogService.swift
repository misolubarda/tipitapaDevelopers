//
//  DogService.swift
//  Tipitapa
//
//  Created by Miso Lubarda on 24.02.22.
//

import Foundation

class dogservice {
    func allDogs() -> [Dogs] {
        let allDogs: [Dogs] = [.bruno, .roco, .dante, .sasha, .lucas]
        return allDogs
    }

    
}
enum Dogs: String {
case bruno = "Bruno"
case roco = "Roco"
case dante = "Dante"
case sasha = "Sasha"
case lucas = "Lucas"

    func Color () -> String {
        switch self {
        case .bruno:
        return "white"
        case .roco:
        return "brown"
        case .dante:
        return "black, brown and white"
        case .sasha:
        return "cream"
        case .lucas:
        return "brown"
        }
    }
    func itsOlderThanTwoYears () -> Bool {
        switch self {
        case .bruno:
        return false
        case .roco:
        return true
        case .dante:
        return true
        case .sasha:
        return false
        case .lucas:
        return false 
        }


    }
}
