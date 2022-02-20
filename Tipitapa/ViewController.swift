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
        let beautifulCountries = CountryService.allCountriesInOneString()
    }
}

