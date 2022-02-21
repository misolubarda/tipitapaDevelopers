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
        // HOMEWORK:
        // We did this "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador, and Argentina are beautiful countries."
        //
        // Now we need to have a code that supports any set of counties like here:
        let beautifulCountries: [Country] = [.costaRica, .elSalvador, .nicaragua, .bolivia] // do not change this line


        var beautifulCountriesNames : [String] = []
        for country in beautifulCountries {
            let beautifulCountriesName =  country.rawValue
            beautifulCountriesNames.append(beautifulCountriesName)
        }

        var finalText: String = ""
        for countryName in beautifulCountriesNames {
            if countryName != beautifulCountriesNames.last {
                finalText = finalText + countryName + ", "
            }
        }

        // "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador, "// STOP?
        // "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador" //remove comma and space
        // "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador and Argentina" // add "and Agrentina"
        // "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador, and Argentina are beautiful countries." // add " are beautiful countries."


        finalText.removeLast()
        finalText.removeLast()

        // finalText -> "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador, Argentina"


        finalText = finalText + " and \(beautifulCountriesNames.last!) are beatiful countries."

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

