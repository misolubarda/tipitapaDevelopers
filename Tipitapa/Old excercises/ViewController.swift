//
//  ViewController.swift
//  Test
//
//  Created by Miso Lubarda on 21.01.22.
//

import UIKit // Apple SDK/library

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



        // HOMEWORK: do the same think for Dog as you did for Country
        let dogservice = DogService()
        let alpha = dogservice.dogsNamesSortedAlphabeticly()
        let myDogs: [Dog] = [.roco, .sasha, .bruno, .dante, .lucas]
        let allDogsInOneString = dogservice.allDogsInOneString(dogs: myDogs)


        let dogSortedByName = dogservice.dogsSortedByName(dogs: myDogs)

        let firstCar = Car(brand: .audi, price: 45000.00, producedInYear: 2021)
        let secondCar = Car(brand: .mercedes, price: 1500.00, producedInYear: 1992)
        let thirdCar = Car(brand: .toyota, price: 12000.00, producedInYear: 2014)
        let car1 = Car(brand: .vw, price: 120.00, producedInYear: 2010)
        let car2 = Car(brand: .vw, price: 12343.00, producedInYear: 2000)
        let car3 = Car(brand: .mercedes, price: 64323.00, producedInYear: 2004)
        let car4 = Car(brand: .toyota, price: 8556.00, producedInYear: 1990)

        let cars = [firstCar, secondCar, thirdCar, car1, car2, car3, car4]

        let carService = CarSellingService(cars: cars)
        carService.priceList.forEach { element in
            print(element)
        }

        print("------------")

        let carsOlderThan2000 = cars.filter { car in
            if car.producedInYear > 2000 {
                return true
            } else {
                return false
            }
        }

        let newService = CarSellingService(cars: carsOlderThan2000)
        print(newService.priceList)
        // HOMEWORK: price list shold print out array of strings like this:
        // LLDB: po carSellingService.priceList
        // ----------------------------
        // 1. Mercedes, produced in 1992 costs 1500.00 USD
        // 2. Toyota, produced in 2014 costs 12000.00 USD
        // 3. Volkswagen, produced in 2000 costs 3000.00 USD
        // 4. Audi, produced in 2021 costs 45000.00 USD


        let numbers = [123, 34, 43643, 34, 342352, 445]

        let numbersGreaterThan100 = numbers.filter {
            number in
            if number > 100 {
                return true
            }
            else {
                return false
            }
        }
        print(numbersGreaterThan100)


        let numbersWith5Digits = numbers.filter { number in

//                            AND (not OR)
            if number > 10000 && number < 99999 {
                return true
            }
            return false
        }
        print(numbersWith5Digits)
    }
}

