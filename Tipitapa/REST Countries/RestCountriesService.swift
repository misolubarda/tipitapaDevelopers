//
//  File.swift
//  Tipitapa
//
//  Created by Miso Lubarda on 05.04.22.
//

import Foundation

class RestCountriesService {
    func get() -> String {
        let JSONString =
        """
        {
            "population": 6,
            "presidents": [
                "Junior",
                "Edwin"
            ],
            "name": "Nicaragua",
            "capitalCity": {
                "population": 1,
                "name": "Managua"
            }
        }
        """

        return JSONString
    }
}
// key/value


