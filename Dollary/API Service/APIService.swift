//
//  APIService.swift
//  Dollary
//
//  Created by Lucas Alejandro Kempe on 16/10/2021.
//

import Foundation

class APIService :  NSObject {
    
    private let sourcesURL = URL(string: "https://open.er-api.com/v6/latest/USD")!
    
    func getCurrency(completion : @escaping (Currency) -> ()){
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                let currencyData = try! JSONDecoder().decode(Currency.self, from: data)
                    completion(currencyData)
            }
        }.resume()
    }
}
