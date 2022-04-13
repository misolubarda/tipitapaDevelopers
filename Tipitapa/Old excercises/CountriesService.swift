//
//  Lesson02.swift
//  Tipitapa
//
//  Created by Miso Lubarda on 18.02.22.
//

import Foundation
import UIKit

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
        // "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador and Argentina are beautiful countries." // add " are beautiful countries."

        finalText.removeLast()
        finalText.removeLast()

        // finalText -> "Nicaragua❤️, Costa Rica, Mexico, Bolivia, El Salvador, Argentina"


        finalText = finalText + " and \(beautifulCountriesNames.last!) are beatiful countries."
//        let finaltext2  = "\(beautifulCountriesNames[2]) is the most beautiful country"

        return finalText
    }

    func countriesSortedByName(countries: [Country]) -> [Country] {

        // [Country] -> [String]
        var beautifulCountriesNames : [String] = []
        for country in countries {
            let name = country.rawValue
            beautifulCountriesNames.append(name)
        }


        let sortedCountryNames = beautifulCountriesNames.sorted() // [String] (names) -???> [Country]

//        Country -> String
//        let name = country.rawValue

//        String -> Country
//        let country = Country(rawValue: "Bolivia") //Country.mexico

        // [String] -> [Country]
        var sortedCountries : [Country] = []
        for name in sortedCountryNames {
            let country = Country(rawValue: name)!
            sortedCountries.append(country)
        }
        
        for country in countries {

            var coastString = "doesn't have"
            if country.hasCoast() {
                coastString = "has"
            }


            print("\(country.rawValue) has a population of \(country.population()) millions citizens. This country \(coastString) coast.")
        }
        return sortedCountries
    }

    func test() {
        let service = CountryService2(countries: Country.allCases)
    }
    func test3() {
        let cityService = citiesService(cities: City.allCases)
    }
}

class CountryService2 {
    private let countries: [Country]

    init(countries: [Country]) {
        self.countries = countries
    }

    func countriesStartingWithNSorted() -> String {
        let filteredCountries = countries.filter { country in
            let name = country.rawValue
            if name.first == "N" {
                return true
            }
            else{
                return false
            }
        }
        let sorted = filteredCountries.sorted { firstCountry, secondCountry in
            if firstCountry.population() > secondCountry.population() {
                return true
            }
            else {
                return false
            }
        }
        return "\(sorted)"
    }

}

class citiesService {
    private let cities: [City]

    init(cities: [City]) {
        self.cities = cities
    }
    
}


enum Country: String, CaseIterable {
    case nicaragua = "Nicaragua❤️"
    case costaRica = "Costa Rica"
    case mexico = "Mexico"
    case bolivia = "Bolivia"
    case elSalvador = "El Salvador"
    case argentina = "Argentina"
    case nigeria = "Nigeria"

    /// Number of citizens in millions.
    /// - Returns: Number of millions.
    func population() -> Int {
        switch self {
        case .nicaragua:
            return 7
        case .costaRica:
            return 5
        case .mexico:
            return 130
        case .bolivia:
            return 12
        case .elSalvador:
            return 6
        case .argentina:
            return 45
        case .nigeria:
            return 206
        }
    }

    func hasCoast() -> Bool {
        switch self {
        case .nicaragua:
            return true
        case .costaRica:
            return true
        case .mexico:
            return true
        case .bolivia:
            return false
        case .elSalvador:
            return true
        case .argentina:
            return true
        case .nigeria:
            return true
        }
    }
}
enum City: String, CaseIterable {
    case nairobi = "Nairobi"
    case napoles = "Napoles"
    case navarra = "Navarra"
    case managua = "Managua"
    case Newyork = "New York"

    /// Number of citizens in millions.
    /// - Returns: Number of millions.
    func population() -> Int {
        switch self {
        case .nairobi:
            return 4
        case .napoles:
            return 5
        case .navarra:
            return 6
        case .managua:
            return 1
        case .Newyork:
            return 8
        }
    }
}
