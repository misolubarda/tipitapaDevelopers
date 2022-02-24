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
                                      .costaRica,
                                      .elSalvador,
                                      .argentina]

        let someCountries: [Country] = [.elSalvador,
                                        .argentina]


        let beautifulCountries = CountryService.allCountriesInOneString(countries: myCountries)




        
        // HOMEWORK:
//        let countriesSortedByName = CountryService.countriesSortedByName(countries: myCountries) // returns: [String]

        // please use this inside of the function:
        //        let sortedCountries = beautifulCountriesNames.sorted()

    }
}

