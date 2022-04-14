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

//        print(text)


        // DICTIONARY TO JSON STRING
        // Dictionary
        let country: [String: Any] = [
            "capitalCity": [
                "name": "Managua",
                "population": 1
            ],
            "name" : "Nicaragua",
            "presidents": ["Junior", "Edwin"],
            "population": 6,
        ]

        let jsonData = try! JSONSerialization.data(withJSONObject: country, options: [])
        let jsonString = String(data: jsonData, encoding: .utf8)
//        print(jsonString)

//        let presidents = (country["presidents"] as? [String])?[1]
//
//        // population of Managua
        let capital = country["capitalCity"] as? [String: Any]  //DictionaryType????
        let population = capital?["population"] as? Int
        print(country)



        // JSON TO DICTIONARY
        let service = RestCountriesService()
        let jsonString1 = service.get()
        let jsonData1 = jsonString1.data(using: .utf8)
        let country1 = try! JSONSerialization.jsonObject(with: jsonData1!) as? [String: Any]

        let capital1 = country1?["capitalCity"] as? [String: Any]  //DictionaryType????
        let population1 = capital1?["population"] as? Int
        print(country1)

    }
    
}

