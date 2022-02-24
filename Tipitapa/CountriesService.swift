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


    /// This function creates a text that looks like this "##country1##, ##country2##, ##country3##, ##country4##, ##country5##, and ##country6## are beautiful countries." in case of many countries of it looks like
    ///  this "##country1## is the most beautiful country" in case of one country
    /// - Parameter countries: This parameter is of type [Country]
    /// - Returns: Returns the string mentioned in the description.
    func allCountriesInOneString(countries: [Country]) -> String {
        // HOMEWORK:
        // We did this "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador, and Argentina are beautiful countries."
        //
        // In case there is only one country the text should look like this: Any Country is the most beautiful country.
        // Now we need to have a code that supports any set of counties like here:

        // if beautifulCountries has only 1 country
        //     do Nicaragua is the most beautiful country.
        // else
        //     do what we have already done

        //"[Tipitapa.Country.costaRica] is the most beautiful country."
        // "costaRica is the most beautiful country."

        var finalText: String = ""

        if countries.count == 1 {
            finalText = "\(countries[0].rawValue) is the most beautiful country."
            return finalText
        }


        var beautifulCountriesNames : [String] = []
        for country in countries {
            let beautifulCountriesName = country.rawValue
            beautifulCountriesNames.append(beautifulCountriesName)
        }

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
//        let finaltext2  = "\(beautifulCountriesNames[2]) is the most beautiful country"

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

