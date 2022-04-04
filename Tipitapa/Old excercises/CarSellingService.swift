//
//  CarSellingService.swift
//  Tipitapa
//
//  Created by Miso Lubarda on 28.02.22.
//

import Foundation

class CarSellingService {
    private let cars: [Car]

    init(cars: [Car]) {
        self.cars = cars
    }

    var priceList: [String] {
        let priceList: [String] = cars.enumerated().map { twoValues in
            let car = twoValues.element
            let number = twoValues.offset + 1

            let string = "\(number). \(car.brand.rawValue), produced in \(car.producedInYear) costs \(car.price) USD"

            return string
        }

        return priceList
    }
}


struct Car {
    let brand: Brand
    let price: Float
    let producedInYear: Int
}

enum Brand: String {
    case mercedes = "Mercedes"
    case audi = "Audi"
    case toyota = "Toyota"
    case vw = "Volkswagen"
}
