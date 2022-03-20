//
//  StructsAndClasses.swift
//  Tipitapa
//
//  Created by Miso Lubarda on 04.03.22.
//

import Foundation
import UIKit

enum Breed {
    case horse
    case cow
    case bird
    case dog
}

enum AirplaneType {
    case civil
    case military
}

enum AirplaneSize {
    case small, mid, big
}

struct Airplain {
    let type: AirplaneType // Issues in case of String: Civil != civil, civli // .civli
    let size: AirplaneSize
}

class Animal {
    let breed: Breed
    let age: Int
    let numberOfLegs: Int

    init(breed: Breed, age: Int, numberOfLegs: Int) {
        self.breed = breed
        self.age = age
        self.numberOfLegs = numberOfLegs
    }
}

func test() {
    let sasha1 = Animal(breed: .dog, age: 1, numberOfLegs: 4)
    let sasha2 = Animal(breed: .dog, age: 1, numberOfLegs: 4)

    let boeing737 = Airplain(type: .civil, size: .mid)
}
