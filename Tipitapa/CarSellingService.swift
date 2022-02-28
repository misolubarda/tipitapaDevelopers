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

        return []
    }
}


struct Car {
    let mark: Brand
    let price: Float
    let producedInYear: Int
}

enum Brand {
    case mercedes
    case audi
    case toyota
    case vw
}
