//
//  Lessons01.swift
//  Tipitapa
//
//  Created by Miso Lubarda on 18.02.22.
//

import Foundation

struct Person {
    let name: String // stored property
    let lastname: String // stored property
    let birthday: Date // stored property

    var age: Int { // calculated propery
        let now = Date()

        let calendar = Calendar.autoupdatingCurrent
        let dateComponents = calendar.dateComponents([.year], from: birthday, to: now)
        let numberOfYears = dateComponents.year

        return numberOfYears!
    }

    var nameAndLastName: String {
        // "Edwin Jara"
        return name + " " + lastname
    }
}

// HOMEWORK
// Create a struct called Pet and add some properties/variables to it. Create many different pets and add them to the array called pets.
//struct Pet {
//
//}

func pets () {

    // declaration
    var roco: Pet

    // initialization
    roco = Pet(name: "rocccco", breed: "mongrel", owner: "Junior", age: 7, secondName: nil)
//    var roco = Pet(name: "", breed: "", owner: "", age: 1, secondName: nil)

    let dante: Pet = Pet(name: "Dante", breed: "Beagle", owner: "Edwin", age: 4, secondName: nil)
    let sasha = Pet(name: "sasha", breed: "Husky", owner: "marvin" , age: 1, secondName: "Misho")
    let lucas = Pet(name: "lucas", breed: "maltes", owner: "marvin", age: 1, secondName: nil)

    let petsOfEdwinAndJunior =  [ roco, dante]
    let petsOfMarvin = [sasha, lucas]

    let allPets = [roco, dante, sasha, lucas]

    var allPetsWithSecondName: [Pet] = []

    // FOR loop
//    if sasha.age == lucas.age {
//        print("YEEESSS!")
//    }
//    let something = 4
//
//    if something >= 3 {
//
//    }

    for pet in allPets { // for loop
        let someText = "aljdshgad"

        print(someText)

        if pet.secondName != nil { // if statement
            allPetsWithSecondName.append(pet)
            print(someText)
        }
    }

    // sasha

    roco.name = "roco"
    var allPatsOlderThan3: [Pet] = []

    for pet in allPets {
        if pet.age > 3 {
            allPatsOlderThan3.append(pet)
        }
    }
}

// get all pets older than 3 years in a new varialbe named allPatsOlderThan3


func optionals() {
    var roco = Pet(name: "rocccco", breed: "mongrel", owner: "Junior", age: 7, secondName: nil)
    var dante: Pet = Pet(name: "Dante", breed: "Beagle", owner: "Edwin", age: 4, secondName: nil)
    var sasha = Pet(name: "sasha", breed: "Husky", owner: "marvin" , age: 1, secondName: "Misho")
    var lucas = Pet(name: "lucas", breed: "maltes", owner: "marvin", age: 1, secondName: nil)

    let allPets = [roco, dante, sasha, lucas]

    for pet in allPets {
        guard let secondName = pet.secondName else {
            continue
        }

        print(secondName)
    }


    for var pet in allPets {
        if let secondName = pet.secondName {
            print(secondName + " dog")
        }
    }


    let someName: String? = nil

    // unwrapping
    if let existingName = someName {
        print(existingName)
    }

    if someName != nil {
        let existingName = someName! // String? -> String
    }
}

func ifElseStatement() {
    let pet = Pet(name: "Dante", breed: "", owner: "", age: 5, secondName: nil)

    switch pet.age {
    case 1:
        print("This pet is 1 year old")
    case 1...5:
        print("This pet is between 1 and 5 years old")
    default:
        print("This pet is more than 5 years old")
    }
}

func structFunctions() {
    let roco = Pet(name: "roco", breed: "mongrel", owner: "Junior", age: 7, secondName: nil)
    let dante: Pet = Pet(name: "dante", breed: "beagle", owner: "Edwin", age: 4, secondName: nil)
    let sasha = Pet(name: "sasha", breed: "husky", owner: "marvin" , age: 1, secondName: "Misho")

}

func enums() {

}

struct Pet {
    var name: String
    let breed: String
    let owner: String
    let age: Int
    var secondName: String?

    func description() -> String {
        return "\(name) is owned by \(owner) and is \(age) years old."
    }

    func isFriendWith(pet: Pet) -> String {
        if self.name == "roco" && pet.name == "dante" || self.name  == "dante" && pet.name == "roco" {
            return "YES!!!!"
        }

        return "NOOOOO!"
    }
}
