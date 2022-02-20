//
//  Lesson02.swift
//  Tipitapa
//
//  Created by Miso Lubarda on 18.02.22.
//

import Foundation

class CountriesService {
    func namesSortedAlphabetically() -> [String] {
        let countries: [Country] = [.nicaragua, .costaRica, .mexico, .bolivia, .elSalvador, .argentina]

        var countryNames: [String] = []

        for country in countries {
            let countryName = country.rawValue
            countryNames.append(countryName)
        }

        countryNames.sort()

        return countryNames

    }
    // homework
   
    func allCountriesInOneString() -> String {
        // 1. "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador, Argentina are beautiful countries."
        // 2. "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador and Argentina are beautiful countries."
        let beautifulCountries: [Country] = [.nicaragua,.costaRica,.mexico,.bolivia,.elSalvador]


        var beautifulCountriesNames : [String] = []
        for country in beautifulCountries {
            let beautifulCountriesName =  country.rawValue
            beautifulCountriesNames.append(beautifulCountriesName)
        }

        var finalText: String = ""
        for countryName in beautifulCountriesNames {
            finalText = finalText + countryName + ", " // "Nicaragua❤️, " -> "Nicaragua❤️, Costa Rica, "
        }
        // finalText -> "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador, Argentina, "
        //                      we need to remove the last 2 characters: comma and space ↑↑

        finalText.removeLast()
        finalText.removeLast()

        // finalText -> "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador, Argentina"

        return finalText
    }
}



enum Country: String {
    case nicaragua = "Nicaragua❤️"
    case costaRica = "Costa Rica"
    case mexico = "Mexico"
    case bolivia = "Bolivia"
    case elSalvador = "El Salvador"
    case argentina = "Argentina"
}
