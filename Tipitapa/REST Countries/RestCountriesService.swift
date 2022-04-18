//
//  File.swift
//  Tipitapa
//
//  Created by Miso Lubarda on 05.04.22.
//

import Foundation

class RestCountriesService {
    func get() async -> [[String: Any]] {

        guard let url = URL(string: "https://restcountries.com/v2/name/nicaragua") else {
            return []
        }
        let request = URLRequest(url: url)

        // SYNCHRONOUS vs. ASYNCHORNOUS
                                                    // COMPLETION BLOCK / COMPLETION HANDLER / HANDLER / CALLBACK FUNCTION
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            guard let data = data else {
//                return
//            }
//
//            guard let jsonObject = try? JSONSerialization.jsonObject(with: data) else {
//                return
//            }
//
//            guard let jsonArray = jsonObject as? [[String: Any]] else {
//                return
//            }
//
//            callback(jsonArray)
//        }
//
//        task.resume()



        // ASYNC / AWAIT

        let result = try? await URLSession.shared.data(for: request)

        guard let data = result?.0 else {
            return []
        }

        guard let jsonObject = try? JSONSerialization.jsonObject(with: data) else {
            return []
        }

        guard let jsonArray = jsonObject as? [[String: Any]] else {
            return []
        }

        return jsonArray



//        let JSONString =
//        """
//        {
//            "population" : 6,
//            "presidents" : [
//                "Junior",
//                "Edwin"
//            ],
//            "name": "Nicaragua",
//            "capitalCity": {
//                "population": 1,
//                "name": "Managua"
//            },
//            "hasCoast": true
//        }
//        """

//        guard let data = JSONString.data(using: .utf8) else {
//            return [:]
//        }
    }
}


