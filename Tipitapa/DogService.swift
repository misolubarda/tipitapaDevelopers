//
//  DogService.swift
//  Tipitapa
//
//  Created by Miso Lubarda on 24.02.22.
//

import Foundation

class DogService {
    func dogsNamesSortedAlphabeticly() -> [String] {
        let allDogs = Dog.allCases

        var dogNames: [String] = [ ]

        for dog in allDogs {
            let dogName = dog.rawValue
            dogNames.append(dogName)
        }
        dogNames.sort()
        return dogNames
    }

    // "..."
    func allDogsInOneString(dogs: [Dog]) -> [String] {
        var finalText: String = ""

        var finalDogs: [String] = []
        for dog in dogs {
            let cuteDogs = dog.rawValue
            finalDogs.append(cuteDogs)
        }
        for dogName in finalDogs {
            if dogName != finalDogs.last {
                finalText = finalText + dogName + ", "
            }
        }
        finalText.removeLast()
        finalText.removeLast()

        finalText = finalText + " and \(finalDogs.last!) are cute dogs"
        return []
    }
    func dogsSortedByName(dogs: [Dog]) -> [String] {
        var sortedDogs: [String] = []
        
        for dog in dogs {
            let sortedDog = dog.rawValue
            sortedDogs.append(sortedDog)
        }
        let sortedDogsNames = sortedDogs.sorted()

        var dogssentence: [Dog] = []

        for name in sortedDogsNames {
            let dog = Dog(rawValue: name)!
            dogssentence.append(dog)
        }
        for dog in dogs{

            var olderThanTwoYear = "is not older than two years"
            if dog.itsOlderThanTwoYears(){
                olderThanTwoYear = "is older than two years"
            }

            print( "\(dog.rawValue) is color \(dog.Color()) and it \(olderThanTwoYear)")
        }

        return sortedDogsNames
    }

}
enum Dog: String, CaseIterable {
case bruno = "Bruno"
case roco = "Roco"
case dante = "Dante"
case sasha = "Sasha"
case lucas = "Lucas"

    func Color () -> String {
        switch self {
        case .bruno:
        return "white"
        case .roco:
        return "brown"
        case .dante:
        return "black, brown and white"
        case .sasha:
        return "cream"
        case .lucas:
        return "brown"
        }
    }
    func itsOlderThanTwoYears () -> Bool {
        switch self {
        case .bruno:
        return false
        case .roco:
        return true
        case .dante:
        return true
        case .sasha:
        return false
        case .lucas:
        return false 
        }


    }
}
