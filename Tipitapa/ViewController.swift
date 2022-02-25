//
//  ViewController.swift
//  Test
//
//  Created by Miso Lubarda on 21.01.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // let roco = Pet(...)
        // roco.isFren()
        let countryService = CountriesService()
        _ = countryService.namesSortedAlphabetically()
        let CountryService =  CountriesService()

        let myCountries: [Country] = [.nicaragua,
                                      .elSalvador,
                                      .costaRica,
                                      .bolivia,
                                      .argentina]

        let someCountries: [Country] = [.elSalvador,
                                        .argentina]


        let beautifulCountries = CountryService.allCountriesInOneString(countries: myCountries)




        
        // HOMEWORK:
        let countriesSortedByName = CountryService.countriesSortedByName(countries: myCountries) // returns: [Country]




        // go through ALL sorted countries in countriesSortedByName and print
        for country in countriesSortedByName {

            var coastString = "doesn't have"
            if country.hasCoast() {
                coastString = "has"
            }


            print("\(country.rawValue) has a population of \(country.population()) millions citizens. This country \(coastString) coast.")
        }

        // HOMEWORK: do the same think for Dog as you did for Country
    }
}

