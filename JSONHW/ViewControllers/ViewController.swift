//
//  ViewController.swift
//  JSONHW
//
//  Created by Самир Кафаров on 29.09.2022.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeRequest()
    }
    
    private func makeRequest() {
        var request = URLRequest(url: URL(string: "https://v2.jokeapi.dev/joke/Any?safe-mode")!)
        
        // adding headers
        request.allHTTPHeaderFields = ["authToken" : "nil"]
        
        //adding methods
        request.httpMethod = "GET"
        
        // task for sending request
        let task = URLSession.shared.dataTask(with: request) {data, response, error in
            print(String(decoding: data!, as: UTF8.self))
            print(error)
        }
        task.resume()
    }

}

