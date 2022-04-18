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

        let service = RestCountriesService()
//        service.get { jsonArray in
//            print(jsonArray)
//        }

        Task {
            let jsonArray = await service.get()
            print(jsonArray)
        }
    }
    
}
