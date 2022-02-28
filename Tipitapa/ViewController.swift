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
        DogService()
        let dogservice = DogService()
        let alpha = dogservice.dogsNamesSortedAlphabeticly()
        let myDogs: [Dog] = [.roco, .sasha, .bruno, .dante, .lucas]
        let allDogsInOneString = dogservice.allDogsInOneString(dogs: myDogs)




        for Dog in myDogs {

            var older1YearString = "is younger than 1 year"
        }




        // HOMEWORK: price list shold print out array of strings like this:
        // LLDB: po carSellingService.priceList
        // ----------------------------
        // 1. Mercedes, produced in 1992 costs 1500.00 USD
        // 2. Toyota, produced in 2014 costs 12000.00 USD
        // 3. Volkswagen, produced in 2000 costs 3000.00 USD
        // 4. Audi, produced in 2021 costs 45000.00 USD

    }
}

